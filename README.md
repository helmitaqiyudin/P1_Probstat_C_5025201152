# P1_Probstat_C_5025201152
## Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya

```r
#variabel
x <- 3
p <- 0.20
n <- 10000
```

### A
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
```r
dgeom(x, p)
#0.1024
```
`dgeom` digunakan untuk mencari peluang distribusi geometrik

### B
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```r
mdisgeo <- mean(rgeom(n, p) == x)
mdisgeo
#0.1033
```
`rgeom` digunakan untuk menghitung distribusi geometrik dengan data random kemudian kita cari meannya menggunakan mean()

### C
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan? <br>

a menggunakan nilai tetap sehingga peluang distribusi geometriknya selalu sama, sedangkan b menggunakan nilai acak sehingga peluang distribusi geometriknya berubah ubah. untuk nilai peluang distribusi geometriknya cenderung mirip antara a dan b

### D
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
![plot](https://user-images.githubusercontent.com/80032250/162624485-9dd86fd3-932b-4bf0-b574-081775eaf7cc.png)<br>


### E
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```r
1/p #mean
(1 - p) / p^2 #variance
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

```r
#variabel
p <- 0.2
n <- 20
x <- 4
```
### A
Peluang terdapat 4 pasien yang sembuh.
```r
dbinom(x, n, p)
#0.2181994
```
fungsi `dbinom` digunakan untuk menghitung peluang distribusi binomial 

### B
Gambarkan grafik histogram berdasarkan kasus tersebut.
![plot](https://user-images.githubusercontent.com/80032250/162624525-4b5ae149-23b0-439f-bb82-0cae0d794fa2.png)<br>

### C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```r
n*p #rataan
n*p(1-p) #varian
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

```r
#variabel
x <- 6
lambda <- 4.5
```

### A
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```r
dpois(x, lambda)
#0.1281201
```
Menggunakan fungsi `dpois` untuk menghitung peluang distribusi poisson

### B
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
![plot](https://user-images.githubusercontent.com/80032250/162624560-685dcf44-7695-4ba0-a6cd-6958e3392f2b.png)<br>


### C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan <br>

Poin a merupakan hasil perhitungan eksak sedangkan poin b melalui proses simulasi. hasil keduanya mirip

### D 
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
```r
lambda #rataan
lambda #varian
```
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
```r
#variabel
x <- 2
v <- 10
```

### A
Fungsi Probabilitas dari Distribusi Chi-Square
```r
dchisq(x, v)
#0.007664155
```
fungsi `dchisq ` untuk menghitung peluang distribusi chi-square

### B
Histogram dari Distribusi Chi-Square dengan 100 data random.
![plot](https://user-images.githubusercontent.com/80032250/162624579-332992a0-474a-4551-8860-10b1135760f3.png)<br>


### C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```r
v #rataan
2*v #varian
``` 
Menggunakan rumus biasa untuk menghasilkan mean dan varian

## Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

```r
#variabel
lambda <- 3
```

### A
Fungsi Probabilitas dari Distribusi Exponensial
```r
dexp(x = seq(1, 10, by = 0.1), rate = lambda)
```
Menggunakan fungsi `dexp` untuk menghitung peluang distribusi exponensial. 

### B
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
![plot](https://user-images.githubusercontent.com/80032250/162624645-11fd9907-2c01-431d-9548-108cdc6608a9.png)
![plot](https://user-images.githubusercontent.com/80032250/162624651-172b352c-d4ba-4261-8e92-6ec9c088d884.png)
![plot](https://user-images.githubusercontent.com/80032250/162624661-8e62b5b6-3106-4810-b03b-04b0866582fb.png)
![plot](https://user-images.githubusercontent.com/80032250/162624667-43475da4-54c1-479d-8cb9-155a0cf36eb7.png)


### C
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```r
n = 100
mean(rexp(n = n, rate = lambda))
var(rexp(n = n, rate = lambda))
```
Menggunakan fungsi mean untuk menghitung rata-rata dan fungsi var untuk menghitung varian

## Nomor 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

```r
n <- 100;
sd <- 8
mean <- 50
```

### A
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
```r
set.seed(n)
random <- rnorm(n, mean, sd)
avg <- mean(random)
x1 <- floor(avg)
x2 <- ceiling(avg)
dn <- pnorm(x2, mean, sd, lower.tail = TRUE) -
    pnorm(x1, mean, sd, lower.tail = TRUE)
cat("Distribusi normal P(X1 <= x <= X2) = ", dn)

```
Pertama generate nilai randomnya lalu dicari rata-rata.  Kemudian baru hitung peluang distribusi normal P(X1 ≤ x ≤ X2). Peluang distribusi normal P(X1 ≤ x ≤ X2) bisa didapat dari P(x ≤ X2) -  P(x ≤ X1). `pnorm` digunakan untuk mencari cumulative density function dari distribusi normal

```r
z_score_x1 <- (x1 - mean) / sd
z_score_x2 <- (x2 - mean) / sd
cat("Z-Score X1 = ", z_score_x1, "\nZ-Score X2 = ", z_score_x2)

```
Nilai z-score didapat dari x-mean/sd
![plot](https://user-images.githubusercontent.com/80032250/162624736-e9bd7072-ea14-4f47-8d5f-4ff3b4805eb8.png)<br>



### B
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram  <br>
![plot](https://user-images.githubusercontent.com/80032250/162624701-077b2057-6a24-4030-a4f9-53610ac8f46b.png)<br>


### C
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
```r
var(rnorm(n, mean, sd))
#69.12706
```
Menggunakan fungsi var untuk mencari varian 
