const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');

const app = express();
const PORT = process.env.PORT || 3000;

// Khởi tạo kết nối MySQL (Connection Pool)
const db = mysql.createPool({
    host: 'localhost',
    user: 'webuser',
    password: 'webpass',
    database: 'doan_web1',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Middleware
app.use(cors()); // Cho phép Frontend gọi API
app.use(express.json()); // Xử lý dữ liệu JSON trong body của request

// --- API SẢN PHẨM ---
// Lấy danh sách toàn bộ sản phẩm
app.get('/api/products', async (req, res) => {
    try {
        const [rows] = await db.query('SELECT * FROM products');
        
        // MySQL trả về detail kiểu string/object tuỳ phiên bản json, 
        // ta nên chuẩn hoá lại object promo theo đúng cấu trúc cũ của JS
        const mappedProducts = rows.map(product => {
            return {
                masp: product.masp,
                name: product.name,
                company: product.company,
                img: product.img,
                price: product.price,
                star: product.star,
                rateCount: product.rateCount,
                promo: {
                    name: product.promo_name,
                    value: product.promo_value
                },
                detail: typeof product.detail === 'string' ? JSON.parse(product.detail) : product.detail
            }
        });
        
        res.json(mappedProducts);
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Lỗi khi đọc dữ liệu sản phẩm', error });
    }
});

// Lấy thông tin 1 sản phẩm theo mã (masp)
app.get('/api/products/:masp', async (req, res) => {
    try {
        const masp = req.params.masp;
        const [rows] = await db.query('SELECT * FROM products WHERE masp = ?', [masp]);
        
        if (rows.length > 0) {
            const product = rows[0];
            const result = {
                ...product,
                promo: {
                    name: product.promo_name,
                    value: product.promo_value
                },
                detail: typeof product.detail === 'string' ? JSON.parse(product.detail) : product.detail
            };
            delete result.promo_name;
            delete result.promo_value;
            res.json(result);
        } else {
            res.status(404).json({ message: 'Không tìm thấy sản phẩm' });
        }
    } catch (error) {
        res.status(500).json({ message: 'Lỗi Server', error });
    }
});

// --- API KHÁC (Đăng nhập, Giỏ hàng...) ---
// (Sẽ được phát triển thêm tuỳ vào nhu cầu)

app.get('/', (req, res) => {
    res.send('Chào mừng đến với API hệ thống bán hàng!');
});

app.listen(PORT, () => {
    console.log(`Backend Server đang chạy tại địa chỉ http://localhost:${PORT}`);
});
