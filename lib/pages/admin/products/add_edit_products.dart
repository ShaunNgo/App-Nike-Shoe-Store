import 'package:flutter/material.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/components/product_add_textflied.dart';
import 'package:ltddnc/data/models/shoe.dart';

class AddEditProducts extends StatefulWidget {
  final bool isUpdate;
  final Shoe? shoe;
  const AddEditProducts({
    super.key,
    this.isUpdate = false,
    this.shoe,
  });

  @override
  State<AddEditProducts> createState() => _AddEditProductsState();
}

class _AddEditProductsState extends State<AddEditProducts> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _desController = TextEditingController();
  final TextEditingController _imgController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _catController = TextEditingController();
  // final TextEditingController _sizeController = TextEditingController();
  String titleText = "";

  //save method

  //update method

  @override
  void initState() {
    super.initState();
    if (widget.shoe != null && widget.isUpdate) {
      _nameController.text = widget.shoe!.name!;
      _desController.text = widget.shoe!.description!;
      _priceController.text = widget.shoe!.price.toString();
      _imgController.text = widget.shoe!.imagePath!;
      _catController.text = widget.shoe!.category.toString();
    }
    if (widget.isUpdate) {
      titleText = "Cập nhật sản phẩm";
    } else
      titleText = "Thêm sản phẩm";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          titleText,
          style: const TextStyle(
            fontFamily: 'BeVietnamPro',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            ProductAddTextFlied(
              controller: _nameController,
              lableText: 'Tên sản phẩm',
              maxLine: 1,
            ),
            const SizedBox(height: 15),
            ProductAddTextFlied(
              controller: _priceController,
              lableText: 'Giá sản phẩm',
              maxLine: 1,
            ),
            const SizedBox(height: 15),
            ProductAddTextFlied(
              controller: _imgController,
              lableText: 'Link hình sản phẩm',
              maxLine: 1,
            ),
            const SizedBox(height: 15),
            ProductAddTextFlied(
              controller: _catController,
              lableText: 'Loại sản phẩm',
              maxLine: 1,
            ),
            const SizedBox(height: 15),
            ProductAddTextFlied(
              controller: _desController,
              lableText: 'Mô tả sản phẩm',
              maxLine: 3,
            ),
            const SizedBox(height: 100),
            MyButton(opTap: () {}, text: 'Thêm'),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
