var listFruits = [String]()
var isRunning = true

func getInput(message: String) -> String? {
  print(message, terminator: ": ")
  return readLine()
}

func getInputInt(message: String) -> Int? {
  if let inputString = getInput(message: message) {
    return Int(inputString)
  } else {
    return nil
  }
}

func showAllFruit(){
  if listFruits.isEmpty {
    print("Belum ada buah dalam daftar")
  } else {
    for (index, value) in listFruits.enumerated() {
      print("[\(index + 1)] \(value)")
    }
  }
}

func insertFruit(){
  if let name = getInput(message : "Masukkan nama buah"){
    listFruits.append(name)
  } else {
    insertFruit()
    print("Input tidak valid")
  }
}

func editFruit(){
  showAllFruit()
  print("-------------------------")
  if let position = getInputInt(message: "PIlih posisi buah yang akan diganti"), position <= listFruits.count && position > 0, let name = getInput(message: "Masukkan nama Buah"){
    listFruits[position-1] = name
  } else {
    editFruit()
    print("Input tidak valid")
  }
}

func deleteFruit(){
  showAllFruit()
  if let position = getInputInt(message : "Pilih posisi buah yang akan dihapus"), position<=listFruits.count && position>0{
  listFruits.remove(at: position-1)
  } else {
    deleteFruit()
    print("Input tidak valid")
  }
}

  print("Selamat Data di Projo Fruit Market")
func showMenu() {
  print("-------------------------")
  print("[1] Tmapilkan semua buah")
  print("[2] Tambah item buah")
  print("[3] Ubah item buah")
  print("[4] Hapus item buah")
  print("[5] Keluar")

  if let position = getInputInt(message: "Silakan pilih menu di atas"), position<=5 && position > 0 {
    switch position {
      case 1:
        showAllFruit()
        break
      case 2:
        insertFruit()
        break
      case 3:
        editFruit()
        break
      case 4:
        deleteFruit()
      case 5:
        isRunning = false
        print("Terima kasih terlah mengunjjungi Kami")
        break
      default:
        print("Pilihan Anda salah")
    }
  } else {
    print("Item menu tidak valied")
  }

  print("-------------------------")
}

while isRunning {
  showMenu()
}