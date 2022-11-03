import UIKit

// Hacking With Swift Day 4
//loops, loops, and more loops

//döngüler için
/*
 Swift'in döngü yazmanın birkaç yolu vardır, ancak bunların altında yatan mekanizma aynıdır: bir koşul yanlış olarak değerlendirilene kadar bazı kodları tekrar tekrar çalıştırın.

 Swift'deki en yaygın döngü bir fordöngüdür: diziler ve aralıklar üzerinde döngü yapar ve döngü her döndüğünde bir öğe çıkarır ve bir sabite atar.

 Örneğin, burada bir sayı aralığı verilmiştir:

 let count = 1...10
 forHer öğeyi şu şekilde yazdırmak için bir döngü kullanabiliriz :

 for number in count {
     print("Number is \(number)")
 }
 Aynı şeyi dizilerle de yapabiliriz:

 let albums = ["Red", "1989", "Reputation"]

 for album in albums {
     print("\(album) is on Apple Music")
 }
 Döngülerin size verdiği sabiti kullanmazsanız for, Swift'in gereksiz değerler yaratmaması için bunun yerine bir alt çizgi kullanmalısınız:

 print("Players gonna ")

 for _ in 1...5 {
     print("play")
 }
 */

// Döngüler sırasında
/*


 Döngü yazmanın ikinci bir yolu kullanmaktır while: kontrol etmesi için bir koşul verin ve döngü kodu, koşul başarısız olana kadar etrafta dolaşacaktır.

 Örneğin, while bir saklambaç oyununda bir çocuğun saymasını simüle etmek için bir döngü kullanabiliriz: bir ile başlarız, her sayıyı yazdırırken 20'ye kadar sayarız, sonra döngüden sonra "Hazır ya da değil" yazdırırız.

 İşte Swift'de nasıl göründüğü:

 var number = 1

 while number <= 20 {
     print(number)
     number += 1
 }

 print("Ready or not, here I come!")
 */

//Exiting loops
/*

 You can exit a loop at any time using the break keyword. To try this out, let’s start with a regular while loop that counts down for a rocket launch:

 var countDown = 10

 while countDown >= 0 {
     print(countDown)
     countDown -= 1
 }

 print("Blast off!")
 In this case, the astronaut in command gets bored part-way through the countdown and decides to skip the remainder and launch straight away:

 while countDown >= 0 {
     print(countDown)

     if countDown == 4 {
         print("I'm bored. Let's go now!")
         break
     }

     countDown -= 1
 }
 With that change, as soon as countDown reaches 4 the astronaut’s message will be printed, and the rest of the loop gets skipped.
 */

// Birden çok döngüden çıkmak
/*


 Bir döngünün içine bir döngü koyarsanız, buna iç içe döngü denir ve hem iç döngüden hem de dış döngüden aynı anda çıkmak istemeniz nadir değildir.

 Örnek olarak, 1'den 10'a kadar olan çarpım tablolarını hesaplamak için şöyle bir kod yazabiliriz:

 for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")
     }
 }
 Yarı yoldan çıkmak istiyorsak iki şey yapmalıyız. İlk olarak, dış döngüye şöyle bir etiket veriyoruz:

 outerLoop: for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")
     }
 }
 İkinci olarak, koşulumuzu iç döngünün içine ekleyin, ardından break outerLoopher iki döngüden aynı anda çıkmak için kullanın:

 outerLoop: for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")

         if product == 50 {
             print("It's a bullseye!")
             break outerLoop
         }
     }
 }
 Bir normal ile break, yalnızca iç döngüden çıkılır - dış döngü kaldığı yerden devam ederdi.
 */

//Öğeleri atlama
/*
 

 Gördüğünüz gibi, breakanahtar kelime bir döngüden çıkıyor. Ancak mevcut öğeyi atlayıp bir sonrakine geçmek istiyorsanız, continuebunun yerine kullanmalısınız.

 Bunu denemek için 1'den 10'a kadar bir döngü yazabilir, ardından tek sayıları atlamak için Swift'in kalan operatörünü kullanabiliriz:

 for i in 1...10 {
     if i % 2 == 1 {
         continue
     }

     print(i)
 }
 Unutmayın, kalan operatör, döngümüzdeki her sayıya kaç kez 2 sığdığını bulur ve sonra kalanları döndürür. Yani, 1 kalırsa, sayı tek demektir, bu yüzden continueonu atlamak için kullanabiliriz.
 */

//sonsuz döngüler
/*
 

 Sonsuzwhile döngüler yapmak için döngüleri kullanmak yaygındır : sonu olmayan ya da yalnızca hazır olduğunuzda biten döngüler. iPhone'unuzdaki tüm uygulamalar sonsuz döngüler kullanır, çünkü bunlar çalışmaya başlar ve siz onlardan çıkmayı seçene kadar sürekli olarak olayları izler.

 Sonsuz bir döngü yapmak trueiçin koşul olarak kullanın. trueher zaman doğrudur, bu nedenle döngü sonsuza kadar tekrar eder. Uyarı: Lütfen döngünüzden çıkan bir çekiniz olduğundan emin olun, aksi takdirde asla bitmeyecektir.

 Örnek olarak, John Cage'in 4'33” parçasının müziğini basmak için kullanacağız while true– eğer bilmiyorsanız, ünlü çünkü 4 dakika 33 saniyelik tam sessizlik.

 Bu parçanın “müziği”ni while true, yeterince zaman geçtikten sonra döngüden çıkan bir koşulla kullanarak yazabiliriz:

 var counter = 0

 while true {
     print(" ")
     counter += 1

     if counter == 273 {
         break
     }
 }
 */

//Döngü özeti
/*
 

 Bu serinin dördüncü bölümünün sonuna geldiniz, o yüzden özetleyelim:

 Döngüler, bir koşul yanlış olana kadar kodu tekrar etmemize izin verir.
 En yaygın döngü, fordöngü içindeki her öğeyi geçici bir sabite atayan döngüdür.
 Döngülerin size verdiği geçici sabite ihtiyacınız foryoksa, bunun yerine bir alt çizgi kullanın, böylece Swift bu işi atlayabilir.
 whileKontrol etmek için açık bir koşul sağladığınız döngüler vardır .
 Döngülere benzemelerine rağmen while, repeatdöngüler her zaman döngülerinin gövdesini en az bir kez çalıştırır.
 kullanarak tek bir döngüden çıkabilirsiniz break, ancak iç içe döngüleriniz varsa, breakardından dış döngünüzden önce yerleştirdiğiniz etiketi kullanmanız gerekir.
 kullanarak bir döngüdeki öğeleri atlayabilirsiniz continue.
 Sonsuz döngüler, siz isteyinceye kadar bitmez ve while true. Sonsuz döngülerinizi sona erdirmek için bir yerde bir şartınız olduğundan emin olun!
 */

//
/*
 
 */

//
/*
 
 */

//
/*
 
 */

//
/*
 
 */

