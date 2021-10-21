builtin.func @test(%V__0: tensor<?x?x?xf32>, %V__1: tensor<?xf32>) -> tensor<?x?x?xf32> {
  %0 = "tf.Exp"(%V__0) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %1 = "tf.LeakyRelu"(%V__0) {alpha = 0.1 : f32} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %2 = "tf.Pow"(%1, %V__0) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %3 = "tf.Abs"(%2) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %4 = "tf.LeakyRelu"(%3) {alpha = 0.1 : f32} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %5 = "tf.Sqrt"(%4) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %6 = "tf.Tan"(%5) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %7 = "tf.Acos"(%6) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %8 = "tf.Rint"(%V__1) : (tensor<?xf32>) -> tensor<?xf32>
  %9 = "tf.Cosh"(%8) : (tensor<?xf32>) -> tensor<?xf32>
  %10 = "tf.BiasAdd"(%7, %9) {data_format = "NCHW"} : (tensor<?x?x?xf32>, tensor<?xf32>) -> tensor<?x?x?xf32>
  %11 = "tf.Pow"(%0, %10) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %12 = "tf.Softplus"(%11) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %13 = "tf.Acosh"(%12) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %14 = "tf.Selu"(%13) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %15 = "tf.Softsign"(%14) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %16 = "tf.Sin"(%15) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %17 = "tf.LeakyRelu"(%V__0) {alpha = 0.1 : f32} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %18 = "tf.Div"(%V__0, %V__0) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %19 = "tf.Softplus"(%18) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %20 = "tf.Add"(%17, %19) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %21 = "tf.Sub"(%16, %20) : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  %22 = "tf.Square"(%21) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
  return %22 : tensor<?x?x?xf32>
}
