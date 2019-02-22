import 'package:flutter/material.dart';

class Product {
  const Product({this.name});
  // or: Product(this.name); 参数必须要包含大括号

  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  // 构造函数，从右至左执行。
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: ObjectKey(product));
  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context)),
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);
  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();
  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (!inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0), // symmetric: adj,对称性的
        children: (widget.products.map((Product product) {
          return ShoppingListItem(
              product: product,
              inCart: _shoppingCart.contains(product),
              onCartChanged: _handleCartChanged);
        }))
            .toList(),
      ),
    );
  }
}

class Ex6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: ShoppingList(
        products: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Flour'),
          new Product(name: 'Chocolate chips'),
        ],
      ),
    );
  }
}
