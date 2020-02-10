# RGB-ke-CMYK

silahkan disimak video berikut ini, jangan lupa di like, comment dan subscribe:
[![Konversi RGB ke CMYK dan Konversi CMYK ke RGB](https://img.youtube.com/vi/lFNtMe0CLEY/0.jpg)](https://www.youtube.com/watch?v=lFNtMe0CLEY)

Model warna CMY (cyan, magenta, yellow) mempunyai hubungan dengan RGB sebagai berikut:

![rumus 1](https://user-images.githubusercontent.com/16121896/72498248-58bd3700-3861-11ea-9d1e-2b89c4e13204.png)

Dalam hal ini, R, G, dan B berupa nilai warna yang telah dinormalisasi, dengan jangkauan [0, 1].
Pada CMY, warna hitam diperoleh jika C, M, dan Y bernilai sama. Namun, pada aplikasi printer, warna hitam ditambahkan tersendiri sehingga membentuk CMYK, dengan K menyatakan warna hitam. Alasannya, kalau ada warna hitam, warna dapat diambilkan secara langsung dari tinta hitam, tanpa perlu mencampur dengan warna lain. Lagipula, tinta warna hitam lebih murah daripada tinta berwarna dan paling sering digunakan terutama untuk teks. 

![Picture1](https://user-images.githubusercontent.com/16121896/72498313-8bffc600-3861-11ea-8385-21928db79217.png)

Perlu diketahui, konversi dari CMY ke CMYK dapat menggunakan berbagai cara perhitungan. Salah satu rumus yang digunakan sebagai berikut (Crane, 1997):

![rumus 2](https://user-images.githubusercontent.com/16121896/72498373-b782b080-3861-11ea-92a0-5fbdef20b1a0.png)

Dengan pendekatan seperti itu, salah satu dari C’, M’, atau Y’ akan bernilai 0. Namun, ada pula yang menggunakan rumus seperti berikut (Dietrich, 2003):

![rumus 3](https://user-images.githubusercontent.com/16121896/72498440-ed279980-3861-11ea-89be-27d8cadb93a6.png)

Dalam hal ini, jika K = 1, C=Y=K=0.
Selain itu, pendekatan yang lain terdapat pada Pratt (2001). Rumus yang digunakan berupa:

![rumus 4](https://user-images.githubusercontent.com/16121896/72498485-0fb9b280-3862-11ea-9bde-0cf14bcf4a34.png)

Dalam hal ini,  0 < u < 1 dan 0 < b < 1,0.

Referensi :

Crane, R. 1997. A Simplified Approach to Image Processing Classical and Modern Techniques in C. Upper Saddle River: Prentice Hall PTR.

Dietrich, H. 2003. XCmyk – CMYK to RGB calculator with Source Code. [Online] http://www.codeproject.com/KB/applications/xcmyk.aspx

Pratt, W. K. 2001. Digital Image Processing; New York: John Wiley and Sons.
