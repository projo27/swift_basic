print("Selamat Datang di Projo Resto")
print("Mari Membuat Makanan!")
print("--------------------------")
print("Apa yang ingin Anda buat?"); let food = readLine() ?? ""
print("Masukkan Jumlah item yang ingin Anda Masukkan", terminator: " : "); let itemCount = readLine() ?? "0"
print("--------------------------")

if let totalItem : Int = Int(itemCount){
  var recipe = [String]()
  for index in 1...totalItem {
    print("Masukkanlah item ke \(index)", terminator : ": "); let newItem = String(readLine() ?? "")
    recipe.append(newItem)
  }
  print("--------------------------")
  print("Berapa lama proses memasak dilakukan?", terminator : " "); let time = readLine() ?? ""
  print("--------------------------")
  recipe.sort()
  print("Anda akan membuat \(food) selama \(time) dengan resep")

  for (index, value) in recipe.enumerated() {
    print("\(index + 1). \(value)")
  }
} else {
  print("Input tidak valid, Masukkan Angka")
}

print("--------------------------")
