import UIKit

//Hacking With Swift

//Day 5 – functions, parameters, and errors

// Yazma işlevleri
/*


 İşlevler, kodu yeniden kullanmamıza izin verir, bu da ilginç bir şey yapmak için bir işlev yazabileceğimiz ve ardından bu işlevi birçok yerden çalıştırabileceğimiz anlamına gelir. Kodu tekrarlamak genellikle kötü bir fikirdir ve işlevler bunu yapmaktan kaçınmamıza yardımcı olur.

 Başlangıç ​​olarak, uygulamamızın kullanıcıları için yardım bilgilerini yazdıran bir fonksiyon yazacağız. Buna uygulamamızın herhangi bir yerinde ihtiyacımız olabilir, bu yüzden bir işlev olarak kullanmak iyi bir fikirdir.

 Swift işlevleri funcanahtar kelimeyle başlar, ardından işlev adınızla başlar, ardından parantezleri açıp kapatır. Fonksiyonunuzun tüm gövdesi – fonksiyon istendiğinde çalıştırılması gereken kod – parantez içine yerleştirilir.

 Şimdi fonksiyonu yazalım printHelp():

 func printHelp() {
     let message = """
 Welcome to MyApp!

 Run this app inside a directory of images and
 MyApp will resize them all into thumbnails
 """

     print(message)
 }
 Artık bunu printHelp()kendi başına kullanarak çalıştırabiliriz:

 printHelp()
 Bir işlevi çalıştırmak genellikle bir işlevi çağırmak olarak adlandırılır .
*/
func message(){
    let message = """
satır1
satır2
satır3


"""
}
message()
//Parametreleri kabul etmek
/*
 

 İşlevler, her çalıştırdığınızda özelleştirilebildiklerinde daha güçlü hale gelir. Swift, bir fonksiyona değer göndermenize izin verir ve bu değer daha sonra fonksiyonun içinde kullanılabilecek şekilde davranış şeklini değiştirmek için kullanılabilir. Bunu zaten kullandık – print()işleve aşağıdaki gibi dizeler ve tamsayılar gönderiyoruz:

 print("Hello, world!")
 Fonksiyonlara bu şekilde gönderilen değerlere parametre denir .

 Kendi fonksiyonlarınızın parametreleri kabul etmesini sağlamak için, her parametreye bir ad verin, ardından iki nokta üst üste koyun, ardından Swift'e olması gereken veri türünü söyleyin. Tüm bunlar, işlev adınızdan sonra parantez içine alınır.

 Örneğin, herhangi bir sayının karesini yazdıran bir fonksiyon yazabiliriz:

 func square(number: Int) {
     print(number * number)
 }
 Bu, Swift'e bir almayı beklediğimizi Intve çağrılması gerektiğini söyler number. Bu ad, hem parametreye atıfta bulunmak istediğinizde işlevin içinde, hem de işlevi çalıştırdığınızda aşağıdaki gibi kullanılır:

 square(number: 8)
*/

//Değerleri döndürme
/*
 

 Fonksiyonlar veri almanın yanı sıra verileri geri de gönderebilir. Bunu yapmak için, fonksiyonunuzun parametre listesinden sonra bir tire, ardından bir dik açılı ayraç yazın, ardından Swift'e ne tür verilerin döndürüleceğini söyleyin.

 İşlevinizin içinde, varsa returnbir değeri geri göndermek için anahtar kelimeyi kullanırsınız. Ardından, işleviniz hemen çıkar ve bu değeri geri gönderir - bu işlevden başka hiçbir kod çalıştırılmaz.

 square()Doğrudan yazdırmak yerine bir değer döndürmek için işlevimizi yeniden yazabiliriz :

 func square(number: Int) -> Int {
     return number * number
 }
 Şimdi fonksiyon çalıştırıldığında bu dönüş değerini alabilir ve oraya yazdırabiliriz:

 let result = square(number: 8)
 print(result)
 Birden çok değer döndürmeniz gerekiyorsa, bu, tuple'ların ne zaman kullanılacağına dair mükemmel bir örnektir.


*/

// parametre etiketleri
/*


 square()Fonksiyonumuzu şöyle yazdık :

 func square(number: Int) -> Int {
     return number * number
 }
 Bu, parametresini adlandırır number, bu nedenle numberona başvurmak için işlevin içinde kullanabiliriz, ancak işlevi çalıştırırken de adı şu şekilde kullanmalıyız:

 let result = square(number: 8)
 Swift, her parametre için iki isim sağlamamıza izin verir: biri fonksiyon çağrılırken harici olarak kullanılacak ve diğeri fonksiyon içinde dahili olarak kullanılacaktır. Bu, bir boşlukla ayrılmış iki isim yazmak kadar basittir.

 Bunu göstermek için, string parametresi için iki isim kullanan bir fonksiyon aşağıda verilmiştir:

 func sayHello(to name: String) {
     print("Hello, \(name)!")
 }
 Parametre çağrılır to name, yani harici olarak çağrılır to, ancak dahili olarak çağrılır name. Bu, değişkenlere işlev içinde mantıklı bir ad verir, ancak işlevin çağrılmasının doğal olarak okunduğu anlamına gelir:

 sayHello(to: "Taylor")
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

//
/*
 
*/

//
/*
 
*/

//
/*
 
*/

