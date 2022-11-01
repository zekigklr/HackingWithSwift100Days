import UIKit

//Hacking With Swift Day 3

//Aritmetik Operatörler

/*
 Artık Swift'deki tüm temel türleri biliyorsunuz, operatörleri kullanarak bunları bir araya getirmeye başlayabiliriz. +Operatörler ve gibi küçük matematiksel sembollerdir -ve Swift'de bunlardan çok geniş bir yelpaze vardır.

 İşte çalışmamız için birkaç test değişkeni:

 let firstScore = 12
 let secondScore = 4
 ve kullanarak toplama ve çıkarma +yapabiliriz -:

 let total = firstScore + secondScore
 let difference = firstScore - secondScore
 Ve şunu kullanarak çarpabilir ve *bölebiliriz /:

 let product = firstScore * secondScore
 let divided = firstScore / secondScore
 Swift, bölme işleminden sonra kalanları hesaplamak için özel bir operatöre sahiptir: %. Bir sayının diğerinin içine kaç kez sığabileceğini hesaplar ve kalan değeri geri gönderir.

 Örneğin, secondScore4'e ayarladık, yani 1'i geri alacağımızı söylersek 13 % secondScore, çünkü 4, 13'e üç kez sığar ve kalan bir:

 let remainder = 13 % secondScore
 */

//Operatör aşırı yüklemesi

/*
 

 Swift, operatörün aşırı yüklenmesini destekler; bu, bir operatörün yaptığının, onu kullandığınız değerlere bağlı olduğunu söylemenin süslü bir yoludur. Örneğin, +tam sayıları şöyle toplar:

 let meaningOfLife = 42
 let doubleMeaning = 42 + 42
 Ama +aynı zamanda dizeleri birleştirir, bunun gibi:

 let fakers = "Fakers gonna "
 let action = fakers + "fake"
 +Bunun gibi dizileri birleştirmek için bile kullanabilirsiniz :

 let firstHalf = ["John", "Paul"]
 let secondHalf = ["George", "Ringo"]
 let beatles = firstHalf + secondHalf
 Unutma, Swift yazı tipi açısından güvenli bir dildir, yani türleri karıştırmanıza izin vermez. Örneğin, bir anlam ifade etmediği için bir dizeye tamsayı ekleyemezsiniz.
 */

// Bileşik atama operatörleri

/*


 Swift, bir operatörü atamayla birleştiren steno operatörlerine sahiptir, böylece bir değişkeni yerinde değiştirebilirsiniz. Bunlar bildiğiniz mevcut operatörlere benziyor –  +, -, *ve /, ancak =sonunda bir tane var çünkü sonucu kullandığınız değişkene geri ataıyorlar.

 Örneğin, birisi bir sınavda 95 puan aldıysa ancak 5 puan ceza alması gerekiyorsa şunu yazabilirsiniz:

 var score = 95
 score -= 5
 Benzer şekilde, aşağıdakileri kullanarak bir dizeyi diğerine ekleyebilirsiniz +=:

 var quote = "The rain in Spain falls mainly on the "
 quote += "Spaniards"
 */

// Karşılaştırma operatörleri
/*


 Swift, karşılaştırma yapan birkaç operatöre sahiptir ve bunlar az çok matematikte beklediğiniz gibi çalışır.

 Birkaç örnek değişkenle başlayalım, böylece üzerinde çalışacak bir şeyimiz olur:

 let firstScore = 6
 let secondScore = 4
 Eşitliği kontrol eden iki operatör vardır: ==iki değerin aynı olup olmadığını kontrol eder ve !=(“eşit değildir” olarak telaffuz edilir) iki değerin aynı olmadığını kontrol eder :

 firstScore == secondScore
 firstScore != secondScore
 Bir değerin diğerinden büyük, küçük veya eşit olup olmadığını karşılaştırmak için dört operatör vardır. Bunlar tıpkı matematikteki gibidir:

 firstScore < secondScore
 firstScore >= secondScore
 Bunların her biri aynı zamanda dizelerle de çalışır, çünkü dizelerin doğal bir alfabetik sırası vardır:

 "Taylor" <= "Swift"
 */

// Koşullar
/*

 Artık bazı operatörleri biliyorsunuz, ifdeyimleri kullanarak koşullar yazabilirsiniz. Swift'e bir koşul verirsiniz ve bu koşul doğruysa seçtiğiniz kodu çalıştırır.

 Bunu denemek için, adında bir Swift işlevi kullanmak istiyorum print(): onu bir metinle çalıştırıyorsunuz ve yazdırılacak.

 Kazanan bir Blackjack eli olup olmadığını kontrol etmek için koşulları kullanabiliriz:

 let firstCard = 11
 let secondCard = 10

 if firstCard + secondCard == 21 {
     print("Blackjack!")
 }
 Parantez içindeki kod –  {ve }– koşul doğruysa çalıştırılır. İsterseniz, koşulun false olması durumunda çalıştırılacak alternatif kodu aşağıdakileri kullanarak sağlayabilirsiniz else:

 if firstCard + secondCard == 21 {
     print("Blackjack!")
 } else {
     print("Regular cards")
 }
 Ayrıca aşağıdakileri kullanarak koşulları zincirleyebilirsiniz else if:

 if firstCard + secondCard == 2 {
     print("Aces – lucky!")
 } else if firstCard + secondCard == 21 {
     print("Blackjack!")
 } else {
     print("Regular cards")
 }
 */

//koşulları birleştirme
/*
 

 Swift, koşulları birleştirmemize izin veren iki özel operatöre sahiptir: bunlar &&("ve" olarak telaffuz edilir) ve ||("veya" olarak telaffuz edilirler).

 Örneğin, iki kişinin yaşının belirli bir değerin üzerinde olup olmadığını şu şekilde kontrol edebiliriz:

 let age1 = 12
 let age2 = 21

 if age1 > 18 && age2 > 18 {
     print("Both are over 18")
 }
 Bu print()arama, yalnızca her iki yaş da 18'in üzerindeyse gerçekleşecektir. Aslında Swift , testte zaten başarısız age2olduğunu görebildiği için değerini kontrol etmeye bile tenezzül etmez.age1

 Öğelerden birinin testi geçmesi durumunda doğru olarak değerlendirilen &&is alternatifi . ||Örneğin, herhangi bir yaş 18'in üzerindeyse bir mesaj yazdırabiliriz:

 if age1 > 18 || age2 > 18 {
     print("At least one is over 18")
 }
 &&Tek bir koşulda ve birden fazla kez kullanabilirsiniz ||, ancak işleri çok karmaşık hale getirmeyin, aksi takdirde okunması zor olabilir!
 */

//üçlü operatör (Ternary Operator)
/*
 

 Swift, üçlü operatör adı verilen nadiren kullanılan bir operatöre sahiptir. Aynı anda üç değerle çalışır, bu da adının geldiği yerdir: ilk değerde belirtilen bir koşulu kontrol eder ve doğruysa ikinci değeri, yanlışsa üçüncü değeri döndürür.

 Üçlü operatör, bir koşul artı doğru veya yanlış blokların hepsi bir aradadır, soru işareti ve iki nokta üst üste ile ayrılır ve bunların tümü okumayı oldukça zorlaştırır. İşte bir örnek:

 let firstCard = 11
 let secondCard = 10
 print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
 Bu, iki kartın aynı olup olmadığını kontrol eder, ardından koşul doğruysa “Kartlar aynıdır” veya yanlışsa “Kartlar farklıdır” yazdırır. Normal bir koşul kullanarak aynı kodu yazabiliriz:

 if firstCard == secondCard {
     print("Cards are the same")
 } else {
     print("Cards are different")
 }
 */

//İfadeleri değiştir
/*
 

 ifve kullanarak birkaç koşulunuz varsa else if, olarak bilinen farklı bir yapı kullanmak genellikle daha açıktır switch case. Bu yaklaşımı kullanarak durumunuzu bir kez yazarsınız, ardından tüm olası sonuçları ve her biri için ne olması gerektiğini listelersiniz.

 Bunu denemek için, dizeyi içeren bir hava durumu sabiti sunny:

 let weather = "sunny"
 switchDört farklı mesajdan birini yazdırmak için bir blok kullanabiliriz :

 switch weather {
 case "rain":
     print("Bring an umbrella")
 case "snow":
     print("Wrap up warm")
 case "sunny":
     print("Wear sunscreen")
 default:
     print("Enjoy your day!")
 }
 Bu örnekte, son durum – default– gereklidir çünkü Swift, hiçbir olasılığın kaçırılmaması için tüm olası durumları kapsamanızı sağlar. Hava yağmur, kar veya güneşten farklıysa, defaultdava yürütülür.

 Swift, kodu yalnızca her durumda çalıştıracaktır. Yürütmenin bir sonraki duruma devam etmesini istiyorsanız, fallthroughanahtar kelimeyi şu şekilde kullanın:

 switch weather {
 case "rain":
     print("Bring an umbrella")
 case "snow":
     print("Wrap up warm")
 case "sunny":
     print("Wear sunscreen")
     fallthrough
 default:
     print("Enjoy your day!")
 }
 */

//Menzil operatörleri
/*
 

 Swift bize aralık oluşturmanın iki yolunu sunar: ..<ve ...operatörleri. Yarı açık aralık operatörü , ..<son değere kadar olan ancak bu değeri hariç tutan aralıklar oluşturur ve kapalı aralık operatörü , son değere ...kadar olan ve bu değer dahil aralıklar oluşturur .

 Örneğin, aralık 1..<51, 2, 3 ve 4 sayılarını içerirken aralık 1...51, 2, 3, 4 ve 5 sayılarını içerir.

 Aralıklar, bloklar konusunda faydalıdır switch, çünkü bunları her vakanız için kullanabilirsiniz. Örneğin, birisi bir sınava girmişse, puanlarına bağlı olarak farklı mesajlar yazdırabiliriz:

 let score = 85

 switch score {
 case 0..<50:
     print("You failed badly.")
 case 50..<85:
     print("You did OK.")
 default:
     print("You did great!")
 }
 Daha önce olduğu gibi, defaultolası tüm değerlerin kapsandığından emin olmak için vaka orada olmalıdır.


 */

//Operatörler ve koşullar özeti
/*
 

 Bu serinin üçüncü bölümünün sonuna geldiniz, o yüzden özetleyelim:

 Swift, aritmetik yapmak ve karşılaştırma yapmak için operatörlere sahiptir; çoğunlukla bildiğiniz gibi çalışırlar.
 Değişkenlerini yerinde değiştiren bileşik aritmetik operatör çeşitleri vardır: +=, -=, vb.
 Bir koşulun sonucuna göre kod çalıştırmak için if, elseve kullanabilirsiniz .else if
 Swift, bir kontrolü doğru ve yanlış kod bloklarıyla birleştiren üçlü bir operatöre sahiptir. Başka bir kodda görseniz de, bunu kendiniz kullanmanızı tavsiye etmem.
 Aynı değeri kullanan birden çok koşulunuz varsa, bunun switchyerine kullanmak genellikle daha açıktır.
 Son sayının hariç tutulması veya dahil edilmesi gerekip gerekmediğine bağlı olarak ..<ve kullanarak aralıklar oluşturabilirsiniz ....

 */



