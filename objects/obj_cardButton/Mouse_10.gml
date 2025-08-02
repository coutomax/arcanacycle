/// @description levanta a carta um pouco e aumenta seu tamanho um pouco

flexpanel_node_style_set_position(childCard, flexpanel_edge.top, -40, flexpanel_unit.point);
flexpanel_node_style_set_position(childCard, flexpanel_edge.right, 10, flexpanel_unit.point);

layer_text_text(textElementIdDescription, carta.description);
layer_text_text(textElementIdName, carta.name);

image_xscale = 1.14;
image_yscale = 1.14;

