# `timestep.ui.List` inherits from [`timestep.ScrollView`](../scrollview.md).


## Options

* __scrollBounds__ `{object}` ---Includes the properties:

	@param `{number}` minX
	@param `{number}` minY
	@param `{number}` maxX
	@param `{number}` maxY

* __isFixedSize__ `{boolean}`

* __isTiled__ `{boolean}`

These options are passed along to the `List` created at property `model`:

* __getCell__

* __sorter__

* __selectable__

* __dataSource__

## Methods

* __addCell (cellView)__

	@param `{timestep.ui.Cell}` cellView

* __setMaxY (maxY)__

	@param `{number}` maxY


## Properties

* __model__ `{squill.models.List}` --From [squill.models.List](../../squill/models/list.md)

* __selection__ `{}`


## Usage:

Requires a DataSource and Cell.

~~~
var list = new timestep.ui.List({
	parent: this.view,
	dataSource: GC.contacts.getDataSource(),
	width: timestep.device.width-20,
	height: timestep.device.height-20,
	x: 10,
	y: 10,
	scrollX: false,
	backgroundColor: 'white',
	sorter: function (data) { return data.name.toLowerCase(); },
	getCell: function () { return new ContactCell({parent: list}); },
});
~~~