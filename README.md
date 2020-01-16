# RGB-ke-CMYK

Model warna CMY (cyan, magenta, yellow) mempunyai hubungan dengan RGB sebagai berikut:

![rumus 1](https://user-images.githubusercontent.com/16121896/72498248-58bd3700-3861-11ea-9d1e-2b89c4e13204.png)

Dalam hal ini, R, G, dan B berupa nilai warna yang telah dinormalisasi, dengan jangkauan [0, 1].
Pada CMY, warna hitam diperoleh jika C, M, dan Y bernilai sama. Namun, pada aplikasi printer, warna hitam ditambahkan tersendiri sehingga membentuk CMYK, dengan K menyatakan warna hitam. Alasannya, kalau ada warna hitam, warna dapat diambilkan secara langsung dari tinta hitam, tanpa perlu mencampur dengan warna lain. Lagipula, tinta warna hitam lebih murah daripada tinta berwarna dan paling sering digunakan terutama untuk teks. 

![Picture1](https://user-images.githubusercontent.com/16121896/72498313-8bffc600-3861-11ea-8385-21928db79217.png)

Perlu diketahui, konversi dari CMY ke CMYK dapat menggunakan berbagai cara perhitungan. Salah satu rumus yang digunakan sebagai berikut (Crane, 1997):

![rumus 2](https://user-images.githubusercontent.com/16121896/72498373-b782b080-3861-11ea-92a0-5fbdef20b1a0.png)

Dengan pendekatan seperti itu, salah satu dari C’, M’, atau Y’ akan bernilai 0. Namun, ada pula yang menggunakan rumus seperti berikut (Dietrich, 2003):


