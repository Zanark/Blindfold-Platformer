GDPC                                                                            "   D   res://.import/NextLevel.png-30c6a3f48d32a67e8c757884ba68ff98.stex   0�            C᰺��Ђ32�X���L   res://.import/PlayerSpriteSheet.png-107a6f5b2937a266be26ad71e5878dfd.stex    �            ���)�����Eu�"�D   res://.import/background1.png-774b136639391a0e9dcfbac8079866ba.stex �      /      �njjl{{�H�3D   res://.import/background2.png-e7d00181f652ea7a4322806374e58e13.stex П      N      ���������(�`�d�V<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      U      �G͍r&E�`� �g��L   res://.import/metal_bar_platform.png-0895d1473341ce5c688f1c3ca85c4d82.stex  Х      <      �ۊ�<���e;}q�M*D   res://.import/metal_crate.png-8a06bc1fd4557152198986c04ce985ab.stex �            XUDVR�JV%ۉ%jD   res://.import/prop pack.png-d0b625def9feb85b82d26efafdf8d733.stex   ��      �      �=4mC��5P�ʒ�hhD   res://.import/wooden_crate.png-550a485e64da62aea207ffe132a276b4.stex0�      !      ֧�0��7��n�z}�   res://Dragable.gd.remap ��      #       脵l��������d��   res://Dragable.gdc  �
      �      ~�L,0��.���[|a�   res://Dragable.tscn �      s      ����L��|��	xsv��   res://Level1.tscn          q      vX�6�omwH�g�    res://Level2.tscn   �      �      ���i+��c�[Yt5��   res://NextLevel.gd.remap��      $       ��٪�[��{��eK�   res://NextLevel.gdc �!      �      _�Γq��4ܯ�5%ZK�   res://NextLevel.tscn0#      ]      ;f���o�a)f�k6�(   res://Player.gd.remap   �      !       ��0�F �qq��dX��   res://Player.gdc�%      �      �H�j�|����𔋩   res://Player.tscn   p)      �      䟌Mz?�#�ux�z�$   res://TileMaps/Pipes TileMap.tscn    1      @      �='kW~k#*����>(   res://TileMaps/Platforms TileMap.tscn   `B      �Q      F[$�Cv�����-�4   res://assets/sprites/background/NextLevel.png.import@�      �      9.i?�Î9LǗݸLX8   res://assets/sprites/background/background1.png.import   �      �      G.��$`��'��^g�Y8   res://assets/sprites/background/background2.png.import   �      �      �n�R��tSQ��@   res://assets/sprites/background/metal_bar_platform.png.import   �      �      ��R�Ҝ]���в��8   res://assets/sprites/background/metal_crate.png.import   �      �      B��͡O����_���4   res://assets/sprites/background/prop pack.png.import��      �      �G�%�/*��)p�a`8   res://assets/sprites/background/wooden_crate.png.import `�      �      ���ﵘ������
~�H   res://assets/sprites/player/sprite sheets/PlayerSpriteSheet.png.import  @�      �      ��yz�	�U4���   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://icon.png  @�      �      G1?��z�c��vN��   res://icon.png.import    �      �      %��%�8��IN�Bv�   res://project.binary0�      �      ��\sD����5���#GDSC         !   ~      ���ׄ�   ��������Ӷ��   �����϶�   �����������������������¶���   ��������¶��   ����¶��   ���������ζ�   ��������������������ض��   ���������Ҷ�   �������Ŷ���   �����׶�   �����������ض���   �����������¶���   �����������������ض�   �����Ŷ�   ���������������������Ŷ�   ���϶���   ���Ӷ���   ���Ӷ���   �����������������������Ҷ���   ���Ӷ���                   Player                                                      	      
                     #      )      1      5      8      <      =      >      E      K      V      W      ^      d      l      p      q      r      x       |   !   3YYYYYYY5;�  YY0�  PQV�  -YY0�  P�  R�  R�  QV�  &�  4�  V�  &�  T�  PQV�  �  �  �  (V�  �  YYY0�	  P�
  QV�  &P�  QV�  �  P�  PQT�  PQQ�  �  ;�  �  PQ�  )�  �  V�  &�  T�  �  V�  �  PQYYY0�  PQV�  �  PQY`             [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/sprites/background/wooden_crate.png" type="Texture" id=1]
[ext_resource path="res://Dragable.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]

[node name="Dragable" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
[connection signal="area_exited" from="." to="." method="_on_Dragable_area_exited"]
[connection signal="input_event" from="." to="." method="_on_Dragable_input_event"]
             [gd_scene load_steps=6 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://TileMaps/Platforms TileMap.tscn" type="PackedScene" id=2]
[ext_resource path="res://NextLevel.tscn" type="PackedScene" id=3]
[ext_resource path="res://TileMaps/Pipes TileMap.tscn" type="PackedScene" id=4]
[ext_resource path="res://Dragable.tscn" type="PackedScene" id=5]

[node name="Level1" type="Node2D"]
__meta__ = {
"_edit_vertical_guides_": [  ]
}

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 9.31046, -7.9474 )

[node name="Platforms TileMap" parent="." instance=ExtResource( 2 )]
tile_data = PoolIntArray( 65535, 0, 196611, 131071, 0, 196612, 65536, 0, 327685, 65537, 0, 393218, 196607, 0, 65536, 131072, 0, 65538, 262143, 0, 65536, 196608, 0, 65538, 327679, 0, 65536, 262144, 0, 65538, 262162, 0, 393216, 262163, 0, 5, 393215, 0, 65536, 327680, 0, 65538, 327699, 0, 262147, 458751, 0, 65536, 393216, 0, 65538, 393235, 0, 262147, 524287, 0, 65536, 458752, 0, 65538, 458771, 0, 262147, 589823, 0, 65536, 524288, 0, 65538, 524307, 0, 262147, 655359, 0, 65536, 589824, 0, 65538, 589843, 0, 262147, 720895, 0, 65536, 655360, 0, 65538, 655379, 0, 262147, 786431, 0, 65536, 720896, 0, 65538, 720915, 0, 262147, 851966, 0, 393216, 851967, 0, 393220, 786432, 0, 131074, 786451, 0, 327683 )

[node name="Pipes TileMap" parent="." instance=ExtResource( 4 )]

[node name="Dragable" parent="." instance=ExtResource( 5 )]
position = Vector2( 179.321, 101.81 )

[node name="Dragable2" parent="." instance=ExtResource( 5 )]
position = Vector2( 263.504, 65.4066 )

[node name="NextLevel" parent="." instance=ExtResource( 3 )]
next_scene = "res://Level2.tscn"
[connection signal="body_entered" from="Dragable" to="Player" method="_on_Dragable_body_entered"]
[connection signal="body_entered" from="Dragable2" to="Player" method="_on_Dragable_body_entered"]
               [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://TileMaps/Platforms TileMap.tscn" type="PackedScene" id=2]
[ext_resource path="res://NextLevel.tscn" type="PackedScene" id=3]
[ext_resource path="res://Dragable.tscn" type="PackedScene" id=4]

[node name="Level2" type="Node2D"]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 8, 16 )

[node name="NextLevel" parent="." instance=ExtResource( 3 )]
position = Vector2( 312, 104 )
next_scene = "res://Level1.tscn"

[node name="Dragable" parent="." instance=ExtResource( 4 )]
position = Vector2( 184, 120 )

[node name="Dragable2" parent="." instance=ExtResource( 4 )]
position = Vector2( 72, 88 )

[node name="Platforms TileMap" parent="." instance=ExtResource( 2 )]
tile_data = PoolIntArray( 196607, 0, 3, 131072, 0, 393218, 262143, 0, 262147, 327679, 0, 262147, 393215, 0, 262147, 458751, 0, 196612, 393216, 0, 327685, 393217, 0, 393217, 393218, 0, 393217, 393219, 0, 393217, 393220, 0, 393218, 524287, 0, 65536, 458752, 0, 65538, 458769, 0, 393216, 458770, 0, 393217, 458771, 0, 393217, 458772, 0, 5, 589823, 0, 65536, 524288, 0, 65538, 524299, 0, 196611, 524308, 0, 262147, 655359, 0, 65536, 589824, 0, 65538, 589835, 0, 262147, 589840, 0, 196611, 589844, 0, 262147, 720895, 0, 65536, 655360, 0, 327680, 655361, 0, 1, 655362, 0, 1, 655363, 0, 1, 655364, 0, 1, 655365, 0, 1, 655366, 0, 1, 655367, 0, 1, 655368, 0, 1, 655369, 0, 1, 655370, 0, 1, 655371, 0, 327681, 655372, 0, 1, 655373, 0, 1, 655374, 0, 1, 655375, 0, 1, 655376, 0, 327681, 655377, 0, 1, 655378, 0, 1, 655379, 0, 1, 655380, 0, 196613, 786431, 0, 131072, 720896, 0, 131073, 720897, 0, 131073, 720898, 0, 131073, 720899, 0, 131073, 720900, 0, 131073, 720901, 0, 131073, 720902, 0, 131073, 720903, 0, 131073, 720904, 0, 131073, 720905, 0, 131073, 720906, 0, 131073, 720907, 0, 131073, 720908, 0, 131073, 720909, 0, 131073, 720910, 0, 131073, 720911, 0, 131073, 720912, 0, 131073, 720913, 0, 131073, 720914, 0, 131073, 720915, 0, 131073, 720916, 0, 131074 )
[connection signal="body_entered" from="Dragable" to="Player" method="_on_Dragable_body_entered"]
[connection signal="body_entered" from="Dragable2" to="Player" method="_on_Dragable_body_entered"]
   GDSC         
   6      ���ׄ�   ���󶶶�   ���������Ӷ�   ���������������Ŷ���   ����׶��   �����Ŷ�   ���������������������Ŷ�   ���϶���   ���Ӷ���   �������Ӷ���   �����������Ӷ���      *.tscn        Player                                                   $   	   ,   
   3YY8P�  R�  RQ;�  YY0�  P�  QV�  ;�  �  PQY�  )�  �  V�  &�  T�  �  V�  �	  PQT�
  P�  Q`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://NextLevel.gd" type="Script" id=1]
[ext_resource path="res://assets/sprites/background/NextLevel.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10, 32.06 )

[node name="NextLevel" type="Area2D"]
position = Vector2( 311.198, 56.3896 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -1.16229, -24.2139 )
shape = SubResource( 1 )
   GDSC            �      ������������τ�   ����������������   �������   ��������򶶶   ������������   ����������   �����ض�   ��������   ��������������Ķ   ��������������Ķ   ���������������Ŷ���   ����׶��   ζ��   ϶��   ����������Ķ   ���϶���   �������������Ӷ�   �涶   ������������������������Ҷ��   ���Ӷ���   ���Ӷ���   
      d      <        �>   x         Walk      Player        Jump                                                    	   $   
   %      ,      -      4      5      =      >      F      G      M      T      U      `      a      h      i      s      |      �      �      �      3YY:�  Y:�  �  Y:�  �  Y:�  �  Y:�  �  YY;�  �  T�  YY5;�  W�	  YY0�
  P�  QV�  �  �  T�  �  �  Y�  �  T�  �  �  Y�  &�  PQV�  �  T�  P�  QY�  �  �  P�  R�  T�  QYY0�  P�  QVY�  &P�  T�  �  QV�  �  T�  T�  �  �  �  T�  T�  P�  Q�  YY`       [gd_scene load_steps=7 format=2]

[ext_resource path="res://assets/sprites/player/sprite sheets/PlayerSpriteSheet.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[sub_resource type="CapsuleShape2D" id=1]
radius = 4.80831
height = 7.53655

[sub_resource type="Animation" id=2]
resource_name = "Idle"
length = 0.4
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 0, 1, 2, 3, 0 ]
}

[sub_resource type="Animation" id=3]
resource_name = "Jump"
length = 0.4
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 8, 9, 10, 11, 7 ]
}

[sub_resource type="Animation" id=4]
resource_name = "Walk"
length = 0.4
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:frame")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1 ),
"update": 1,
"values": [ 4, 5, 6, 7, 4 ]
}

[node name="Player" type="KinematicBody2D"]
position = Vector2( -0.269234, 0.35898 )
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
hframes = 12

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0.987194, 6.37189 )
shape = SubResource( 1 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Idle = SubResource( 2 )
anims/Jump = SubResource( 3 )
anims/Walk = SubResource( 4 )
      [gd_scene load_steps=14 format=2]

[ext_resource path="res://assets/sprites/background/prop pack.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=67]
points = PoolVector2Array( 0, 4, 16, 4, 16, 12, 0, 12 )

[sub_resource type="ConvexPolygonShape2D" id=68]
points = PoolVector2Array( 4, 16, 4, 4, 16, 4, 16, 12, 12, 12, 12, 16 )

[sub_resource type="ConvexPolygonShape2D" id=69]
points = PoolVector2Array( 12, 0, 12, 16, 4, 16, 4, 0 )

[sub_resource type="ConvexPolygonShape2D" id=70]
points = PoolVector2Array( 12, 0, 12, 0, 12, 4, 16, 4, 16, 12, 4, 12, 4, 0 )

[sub_resource type="ConvexPolygonShape2D" id=71]
points = PoolVector2Array( 0, 4, 12, 4, 12, 16, 4, 16, 4, 16, 4, 16, 4, 12, 0, 12 )

[sub_resource type="ConvexPolygonShape2D" id=72]
points = PoolVector2Array( 0, 4, 4, 4, 4, 0, 12, 0, 12, 12, 0, 12 )

[sub_resource type="ConvexPolygonShape2D" id=73]
points = PoolVector2Array( 0, 4, 16, 4, 16, 12, 12, 12, 12, 16, 4, 16, 4, 12, 0, 12 )

[sub_resource type="ConvexPolygonShape2D" id=74]
points = PoolVector2Array( 12, 0, 12, 4, 16, 4, 16, 12, 12, 12, 12, 16, 4, 16, 4, 12, 0, 12, 0, 4, 4, 4, 4, 0 )

[sub_resource type="ConvexPolygonShape2D" id=75]
points = PoolVector2Array( 12, 0, 12, 4, 16, 4, 16, 4, 16, 12, 0, 12, 0, 4, 4, 4, 4, 0 )

[sub_resource type="ConvexPolygonShape2D" id=76]
points = PoolVector2Array( 12, 0, 12, 4, 16, 4, 16, 12, 12, 12, 12, 12, 12, 16, 4, 16, 4, 0 )

[sub_resource type="ConvexPolygonShape2D" id=77]
points = PoolVector2Array( 4, 0, 12, 0, 12, 16, 4, 16, 4, 12, 0, 12, 0, 4, 4, 4 )

[sub_resource type="TileSet" id=78]
0/name = "pipes"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 48, 32, 96, 32 )
0/tile_mode = 1
0/autotile/bitmask_mode = 1
0/autotile/bitmask_flags = [ Vector2( 0, 0 ), 56, Vector2( 0, 1 ), 146, Vector2( 1, 0 ), 176, Vector2( 1, 1 ), 50, Vector2( 2, 0 ), 152, Vector2( 2, 1 ), 26, Vector2( 3, 0 ), 184, Vector2( 3, 1 ), 186, Vector2( 4, 0 ), 58, Vector2( 4, 1 ), 154, Vector2( 5, 0 ), 178 ]
0/autotile/icon_coordinate = Vector2( 0, 0 )
0/autotile/tile_size = Vector2( 16, 16 )
0/autotile/spacing = 0
0/autotile/occluder_map = [  ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 67 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 67 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 68 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 69 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 70 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 71 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 72 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 73 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 74 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 75 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 76 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 77 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="Pipes TileMap" type="TileMap"]
tile_set = SubResource( 78 )
cell_size = Vector2( 16, 16 )
format = 1
[gd_scene load_steps=68 format=2]

[ext_resource path="res://assets/sprites/background/prop pack.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=9]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=10]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=11]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=12]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=13]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=14]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=15]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=16]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=17]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=18]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=19]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=20]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=21]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=22]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=23]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=24]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=25]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=26]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=27]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=28]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=29]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=30]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=31]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=32]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=33]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=34]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=35]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=36]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=37]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=38]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=39]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=40]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=41]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=42]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=43]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=44]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=45]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=46]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=47]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=48]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=49]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=50]
points = PoolVector2Array( 1.94045, 5.34302, 13.8919, 5.34302, 13.8919, 16, 1.94045, 16 )

[sub_resource type="ConvexPolygonShape2D" id=51]
points = PoolVector2Array( 2.10196, 5.00906, 13.7304, 5.00906, 13.7304, 16, 2.10196, 16 )

[sub_resource type="ConvexPolygonShape2D" id=52]
points = PoolVector2Array( 0, 5.82754, 16, 5.82754, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=53]
points = PoolVector2Array( 0, 5.49358, 16, 5.49358, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=54]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=55]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=56]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=57]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=58]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=59]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=60]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=61]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=62]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=63]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=64]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="ConvexPolygonShape2D" id=65]
points = PoolVector2Array( 0, 0, 16, 0, 16, 16, 0, 16 )

[sub_resource type="TileSet" id=66]
0/name = "platforms"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 64, 128, 112 )
0/tile_mode = 1
0/autotile/bitmask_mode = 1
0/autotile/bitmask_flags = [ Vector2( 0, 0 ), 432, Vector2( 0, 1 ), 438, Vector2( 0, 2 ), 54, Vector2( 0, 3 ), 255, Vector2( 0, 4 ), 251, Vector2( 0, 5 ), 507, Vector2( 0, 6 ), 48, Vector2( 1, 0 ), 504, Vector2( 1, 1 ), 511, Vector2( 1, 2 ), 63, Vector2( 1, 3 ), 191, Vector2( 1, 4 ), 186, Vector2( 1, 5 ), 506, Vector2( 1, 6 ), 56, Vector2( 2, 0 ), 216, Vector2( 2, 1 ), 219, Vector2( 2, 2 ), 27, Vector2( 2, 3 ), 447, Vector2( 2, 4 ), 446, Vector2( 2, 5 ), 510, Vector2( 2, 6 ), 24, Vector2( 3, 0 ), 176, Vector2( 3, 1 ), 178, Vector2( 3, 2 ), 50, Vector2( 3, 3 ), 144, Vector2( 3, 4 ), 146, Vector2( 3, 5 ), 18, Vector2( 3, 6 ), 16, Vector2( 4, 0 ), 184, Vector2( 4, 1 ), 186, Vector2( 4, 2 ), 58, Vector2( 4, 3 ), 434, Vector2( 4, 4 ), 182, Vector2( 4, 5 ), 440, Vector2( 4, 6 ), 62, Vector2( 5, 0 ), 152, Vector2( 5, 1 ), 154, Vector2( 5, 2 ), 26, Vector2( 5, 3 ), 218, Vector2( 5, 4 ), 155, Vector2( 5, 5 ), 248, Vector2( 5, 6 ), 59, Vector2( 6, 5 ), 432, Vector2( 6, 6 ), 54, Vector2( 7, 5 ), 216, Vector2( 7, 6 ), 27 ]
0/autotile/icon_coordinate = Vector2( 3, 6 )
0/autotile/tile_size = Vector2( 16, 16 )
0/autotile/spacing = 0
0/autotile/occluder_map = [  ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 7, 11 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 9 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 10 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 11 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 12 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 13 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 14 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 15 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 16 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 17 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 18 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 2 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 19 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 20 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 21 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 22 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 23 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 24 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 3 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 25 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 26 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 27 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 28 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 29 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 30 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 4 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 31 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 32 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 33 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 34 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 35 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 36 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 37 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 38 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 5 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 39 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 40 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 41 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 42 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 43 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 44 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 45 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 46 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 6 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 47 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
1/name = "prop pack.png 1"
1/texture = ExtResource( 1 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 144, 32 )
1/tile_mode = 2
1/autotile/icon_coordinate = Vector2( 0, 0 )
1/autotile/tile_size = Vector2( 16, 16 )
1/autotile/spacing = 0
1/autotile/occluder_map = [  ]
1/autotile/navpoly_map = [  ]
1/autotile/priority_map = [  ]
1/autotile/z_index_map = [  ]
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape = SubResource( 48 )
1/shape_one_way = false
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 48 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 49 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 50 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 51 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 52 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 53 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 54 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 55 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 56 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 57 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 8, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 58 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 8, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 59 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 60 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 61 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 62 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 63 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 64 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 65 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0

[node name="Platforms TileMap" type="TileMap"]
tile_set = SubResource( 66 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 458771, 0, 393216, 458772, 0, 5, 524299, 0, 196611, 524308, 0, 262147, 655359, 0, 0, 589824, 0, 2, 589835, 0, 262147, 589844, 0, 262147, 720895, 0, 65536, 655360, 0, 327680, 655361, 0, 1, 655362, 0, 1, 655363, 0, 1, 655364, 0, 1, 655365, 0, 1, 655366, 0, 1, 655367, 0, 1, 655368, 0, 1, 655369, 0, 1, 655370, 0, 1, 655371, 0, 327681, 655372, 0, 1, 655373, 0, 1, 655374, 0, 1, 655375, 0, 1, 655376, 0, 1, 655377, 0, 1, 655378, 0, 1, 655379, 0, 1, 655380, 0, 196613, 786431, 0, 131072, 720896, 0, 131073, 720897, 0, 131073, 720898, 0, 131073, 720899, 0, 131073, 720900, 0, 131073, 720901, 0, 131073, 720902, 0, 131073, 720903, 0, 131073, 720904, 0, 131073, 720905, 0, 131073, 720906, 0, 131073, 720907, 0, 131073, 720908, 0, 131073, 720909, 0, 131073, 720910, 0, 131073, 720911, 0, 131073, 720912, 0, 131073, 720913, 0, 131073, 720914, 0, 131073, 720915, 0, 131073, 720916, 0, 131074 )
    GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8�cP`��@��d�g�����7I:%�����������3X�W03\���U�]@����!�|��3�\|��d 6o�� �?6ED�����~�wG��1B�� �X0������>5$"60�0�Xr���߽y�������͇X�22�j� �I,p���*    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/NextLevel.png-30c6a3f48d32a67e8c757884ba68ff98.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/NextLevel.png"
dest_files=[ "res://.import/NextLevel.png-30c6a3f48d32a67e8c757884ba68ff98.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST                 PNG �PNG

   IHDR         \r�f   sRGB ���  �IDATx���Kr�6@Q$�y��Te��&�$�DeE��k6	��3����xר&i���_��@��W_ p�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0��/W_ �����O����\�~�  L  L  L  L  L  L  �s w�������jN & & & & & & & & & & �] ��ڻ��w���$�|� `RG�K &t���! 0������9�c L���C `
W�@�U�W^�� .��~���3xx��_��{�	�N�U���%[���?��{o2��6��X�M|��/8ؙ�&����%࡮�P�~�u�Z�c8l�0�Yp�����?�5	�f�Y��u��f�ٮ��	��D����<h3_���� o  ��I��[W|�f� a a a a a��<�4�T�.�i�|�S�9	 wg��% ܕ៛ p7�~7��և쥝&ÿ' g��! ��E 8��_� pÿ�/��(맿�/���������	`����~���gM�~V��R��Q�?[� ��ܢ��
���㜽�ޯ�`������fا[`�9�u�zw죶��,2k:��ն�s-6�9z�̶�����-�1��i����?D��L �x.�1D ��`�G� �!0F8 c� �0�Ж�"@� �G(�'D�xF(�� �"@� �B�]�u�[� ;s�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�0�� �� .��iu    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background1.png-774b136639391a0e9dcfbac8079866ba.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/background1.png"
dest_files=[ "res://.import/background1.png-774b136639391a0e9dcfbac8079866ba.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST               2  PNG �PNG

   IHDR         \r�f   sRGB ���  �IDATx���QN�`�Q��r`���I_J+�Ih���?��w+��dlö                                                                                                                                                         �|�>�k��_�����Շ�P߫��c����qZ���X��x��?qM��7�,-� �j����N� ƿ���5ǖ]���?UI �]�?��0�u�<��0�u�~w�ǞU}�	4B���T�ݕ?��	Ԕ���! N����� 8��2����_��D�gZ}@3�]�w{ ~3��M�� �m���cR ������ \W|�%����x���e��t�-��w�3X�J@ ���������@O��.����� ���D@ �1#"  ��#  �9KG@ �󖍀W�a�6ܑ+ ��r�P �k� �o�� _c���` � �	  & L  � @0�` � �	  & L  � @0�` � �	  & L  � @0�` � �	  & L  � @0�` � �	  & L  � @0�` � �	  & L  � @0�` � �	  & L  � @0�` � �	  & L  � @��TGmڅ�1    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background2.png-e7d00181f652ea7a4322806374e58e13.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/background2.png"
dest_files=[ "res://.import/background2.png-e7d00181f652ea7a4322806374e58e13.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST0                 PNG �PNG

   IHDR   0      P���   sRGB ���   �IDATH�cP��0�ë�j�
���G7�0000\�u�h�O^A<�~�>�C�i�(Z�~	>h �����͂�a��?�F010 ����'�~	>��_�0��r�1�恖�yn��o��37��O���Aއ�%0�
9$�i��ePyt�("��?���a��?(�iHy�؜�_P=0� �,�C0���q�A	`"�dp�Q�
  ��Jyǎ    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/metal_bar_platform.png-0895d1473341ce5c688f1c3ca85c4d82.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/metal_bar_platform.png"
dest_files=[ "res://.import/metal_bar_platform.png-0895d1473341ce5c688f1c3ca85c4d82.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST              �   PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8�cP��@`a```8~�8\�ę�X9rCl킩N���0�oI6뙙"\ ���Di~��)�̈́.y��I��R��R7.�d���B�ca`@����9�Fd���a8�pi��@��珟�w� � b��b �9Tq��-�q*�&�a ���'��_?��ʈp�M�耑�� �"/]��g    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/metal_crate.png-8a06bc1fd4557152198986c04ce985ab.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/metal_crate.png"
dest_files=[ "res://.import/metal_crate.png-8a06bc1fd4557152198986c04ce985ab.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST�   �            �  PNG �PNG

   IHDR   �   �   ���O   sRGB ���  `IDATx��{lUG~ǿ.l!\{/��P��-A	�d�U)X�Z� ب��?ٔV�")�JM�D��HhAՖ��h�*U�T����j�MRd�z��c����0���vo��Ü93s�q���G��=��wfΙ����s
�R{v胩��-�S�\jgO��G�9vz} >~o�w�T����c�s-p��w�i�/4��a#fFG0=t�=K1=t���g)V윌E�ş`��>���cN�BeS
'N��T6ua�ޯǢ�ܻ-+Z1q�
�O\Ʋ��>q�fY�r�G�/�K����$^;x���mWb-Y�Z�S@��7,��^����U�㋕[��/]���V%��r�T;=u�Xˋ�H_h+7�/��ൃG�Vn���¿Q"0#����!�Z��g)^�y'T��W����w�Z�;W�E*����?���U�X��	�!�ZDV��Z \=/�yt��7�������g$��7r�:��?�����w�~�shd�gD����+S��）��7Sѿ���]�xt�����0�C#�:�V?����p��N���W���s���}<C*r����8�m\��������DȈ���#8��-�iO4�H?�*���w��Аq���o��-C�����3�-{� �]\@�����v ��`Y�?�πoo�:�*F��T��°�6�枧�H,���|k3����a�菭���^�j��x3���*�B���G��F��nD05" ^��r HGn2�!2Ƭ@
�Uf��?`������#2�2���ⵃG�ќ�ȍ��w��g��7i~l�O~�/�.y���7k��z���+�{l��W��������:1:ޔ��4��/�����G�'��4�I�¤M��O�)hbD�M�Î��Q��R{e[GI{v��܀C��� i\&���RFJK�o&qE�~Ee1���6a���
8�^�-�
�2*�^�	�,��{�;X������e�b�`)����f���O/�h-��r����QW.�!���0Y��^�w�G ���A���n������w�)[f���B�����sc�c���pn�s_�U����S����(���q��q|v}Ka�3s׷d�_
N�F��w�M<��86rCC����(���ص����r���������T���MĀ�T�TnZ.p��e@ЉӪ����I����k�U�cs����1����5a�Z��ɰ0)��Q�j�EV�C'�y'Z \�J���j�E�j���Z \�J��V�!�Z��g���hp��8�gODܲ�-+Zq��q���� �5mak�=�}g��>�*.<���}h�(���E�z ���\K1�RH���I \�0�i2��\� ��ïc��� _[�g�遹�}���W+�ގ-m����U�����!#:Q����D
~����7��
�vm׊�V<�A���l�I�<������vo➧�H,&�����=�_7*|�#?h����������o��N���ȋ˚@���$z�ן:{�8��h�0���D���@
ߴ�Փ�`܄�蓢��#HMA�gn��"TK�b��<��k�<voy ��k;���V�!�{�U��K�8�ზy೹�Ӿ%v�,�ّ�~�hKv�[��
�5:�~1�s���s�>���G_/Fa2�1z>�Ȁܑ�Րy'�q9��P.�W6��О]���}+벸L4�黥���2T�1T0�+��+J�������S\zD���_ʨ�-�>�헮qӧ�A䋩ܥ���b�ob������ ��T�̃ӧ�db q�F�zԄ�~Ssee�@�9�����,L^�c�/�K����L$fɝ$U�7y?��)|T�ՂI���L�E�l"/m؉��M���B=(U�HE6��!J��?Pڰ#6rC6�6@�x�ta��l�@gO�6!�%2�I���f�B�֠ I_N)}A���g��a�_�n2˦���L/��!	G3�D���E�0xǨS����;��Ǹ��$}n�pҵ�?��u��9#(w�2��%��²䕸j������� +@�A��M=l�!��9,���+��^ˀ�d8d]�L�� z�U*�pD�Ӿ�2���or�^��{b�U��+�(K��C�A� ��K_E+ӫ���:�Pʺ� s�\&�u�p'�ش��wx�?6���0x��,��<���!,-�����Nr����i���s*C��^-}��?��J��3�Z��;��}����S�z��u����HűK��ݛB㒸��,e(iyO�/�їb('��L_���J�旬�(>�q��;숴�k�]�v�ũ�l5�H����W��9�]�H���HMt����E+�T�@l��]��1�u����z>��@�ZڰH��N'��-1�i3���d}Q���9�A,5���#3�>ςɫn$���H�r��O��hD@ NM��o��X���T�&ό�yxK���а2z-L՟�2"�����R��K�?9�Rx"ZO�s��#�"��pć�!����F@+{�]d��੿�2΍}�[��M?n�����D���f!ғ!�i�I��@5�W-~l>7@�?�t ����T}����㏔��Tc ��C�?�pX�����Q�#EE`{�,o�u���Ka4R�}n2K�ox.D����d�[�1})a�ĘT��UF�ah��6Q�m��U�K�(�ڱ`���@j(��8�|lX#���Y��@_����L�B/CwZf(�5�nQ�4k��@i�S(���vx�8ɋ�&�����i��p���@���RY���4�ilɕ?Q-�y#$�_}o�]�0�3B�<����/���/���=��.k�Ѣiv]%�RT���] ����\W�ݙ���y@��������柃ִ@�D�G�ÎBc��v���+4i�t��mW��R; T::��"J��N�Pl�5���7�������o?<����IX��~x�<c�{�)���#&�_�ƉW�>�4�>q9P�5����P�'b�5�#�d�*|c�#u
�����
g@٥"��)�e��N �ր�d��d[}�'��P]��������������!���o$�����C�G���0�~���^`���V�P&�dyT�?���HA�"�q�d-T�MXux�d�U3��k��j����VL�=����=�����7ѫ�1o�U�^����į�W�.k�2��Z�ka��e��W���V�K2y�x��r��Q��h ��{Y�r����!�Fa��.k ��1�����Ԑ�G��@9��s8jg@�Źs8�q�#�;G�ɰ?P~�9ꅌ�劺ZL��d�(������	�5��Q�M�����j�r��;w��j�r��;�v15��@�r�Kʸ?���>�9�d���uҳJ�P���;���q�]�;�����0¹s8�ɯ;��RFZ�4�����곰\Dޑ��m4��m~	�~�4\���(�!�U�""R֓/i��e^uL�r�L�	���b���4��SD�vy��4����g�}cc��x�k��XL5}_����yA_o,��⛞��FXt���&̺	�{ZKز��sl{fW^� �
db�i�wwUϨb��e����٭���{ׇaF���Y��� ��o_�b�$P+5�o��~��&?6% �T��������O��ׂ`0�gj -���� y���dzQ"#��L4izX�чr��"	�uߟ/4��T8�Ƭ�X�c��M�?�����o?��l$�$k�D�_�Є����=L�3�>�Y;�G��u΀2]����a��,G��Z Xw�<� g@�� #�����n|z�=����@9��������7��D�7���
c���:�12 ��N}��K�a�(��uT�6�DM���JƩ����گm@iﯣ�v�$�Zt�P)��Jn�&�����#�X��X�(����$L�MX�������V�P�������$镙U ��Lt����-��-Ѻ��f�d�dd@9�_'����?o����z��'s��N� �?����2���$�K2n�r��N�`k �'�����G�;ċCT;����03:��s����=��	��b�?t�����3=t���E	{,�Ө� ��$��g@!e c�s��i��9�p�@��=�Q����{������x_;����qG�ճ����n�������Ro{���?�n�&z"�a<�� |k�(�c��˿��F���&4�"_!%���"��I�X���z��c��e�}[:�S��1U\�a���?Ԝ�2u�D�-4w���P�ǪD��m�{��m������V\�5��I�Vd���>�IC��!�{$��'zs߿-��֡w�i��Z��
g@+�9�p���Ê�2 ���4�yjŇ�f|�U�r؉CZ�����H3.jƀL7'�ͽ;��$/[!�.k��o�j�	�y_Wd�H*p��rM�\j���X���Sl�7q�>#��y^+�"`�����Ɋ����ȫ�T��eC��#}�_ٯ�< }C��R�[��e�>���5a�\i#j�RJߪ	��ڜ�2x;|��/�������P�G
��H��7
ә�J뇅����Kk���G=+]j�r�@�8 Gz8rX��a�3 �΀V��0^5������)J��0>o?��k"1MT�al'!��D�g@Z�����>�����E��Z� M��?M��!�������D��HEd�?Ђ�;e��R{E ��+p��Ée �|8�v��k1�ġB�3�?}O�$M�5?�v`���5?�]W���A_���3��^�d�g>�h��P�ӶG��!�D���c�o�{1x{���8p����E�����H�]\�,����-Y���q�h+x5]x}K�5FR�9�}iK�5p >��;Vxi_g����{�� ��߾ J�dDS}�����iP(��+;�>���3i�E���� _v�b礕>��j��f�m�(��sR5�"���( �4�[�����:���T^�YȄ#�8�2�΀V���@q�t���ꯥDy�e���P����N4'�P�A�T^��ۂ�]s�    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/prop pack.png-d0b625def9feb85b82d26efafdf8d733.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/prop pack.png"
dest_files=[ "res://.import/prop pack.png-d0b625def9feb85b82d26efafdf8d733.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST                PNG �PNG

   IHDR         ��a   sRGB ���   �IDAT8�cP��@`a```�s�.pu�J�
�_y�!ְ�Ā��W24.8N��~&�LȂ2"��	�p6>P0Rb���C}�%Ó7��b�h`��t�.�!� /����]��b\r��;L`�#�%X]@�K���C�K���5 �K�����?Ux�!Ȉ2l���`� FJ�3 cPaë��    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wooden_crate.png-550a485e64da62aea207ffe132a276b4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/background/wooden_crate.png"
dest_files=[ "res://.import/wooden_crate.png-550a485e64da62aea207ffe132a276b4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�               �  PNG �PNG

   IHDR  �       ���   sRGB ���  �IDATx��1h�V��W�O�'��d4d�`�����K��p�G�--^1�ҭ\�K���@ƌ�KIL�Î!
���p�T�*����������8����{��N���(��(��(��(��(��(��(��(��(��(��b@Q����t*����6�6[�F۪�a(<��g�7���Ϭ}b����%�N�։�3�������g��2@6.�oJ��)�(�ߪ̫������<7@�R{B��Q�
,�$p�cQ�W��g�gY�0���f������B|�\������o4�����v ���/[�<�\��������xn�M�ΟdM3@~X�g��?��l}v�Y�Q^�oon ��4I}3�7�K�>��ڞe���Kȝf !&A��?��l} ��G�_n�� ��ro��F  g�q���n0�H�6�b�t{�1$i��"~�M�?[���> �}w+ι�Ͽ��r���vr@�� �/_�i �~-�~[|�^��'AC ��4`v�������?�m�/�}��~�����;7� ��q�w/4� ��������ao�O_b8�i �/��C�dV��S�C'l�0�gן���K������IB5�,N&�,$�}�;�}�t�C�!��%����Яk������ oo�@j���;��Q��Ӎ`'{۾�1W� y&��(��� v��ɩy ;Gg)�>��;-�kI�����<��W߹��J��'���3�����Y�YR�# �������P!�.� ;G=|z� �ɳ�T&q�\�7�>�������=oG N`�\o:�01M0��1��gן�4���}^�3&<�,o�����zQw�?��x���<yf^� v�b��}�d�L̿T�N��ƣ����E��?���� �^j�h��#�Wʽ���3a[n<�����_Ŵ� ��я�����Pr�L��H�4�0x��7���6	��s�uh@����}�ϼ�������[Hl{I���;5���O&$��4 �^lt��!�g� ��s�k�9&�̀/N;��[���2�-�X�N k��Y��4����5�"��Y�9�M�݀m���������7k ~���c���ܗbLtq��O�^��K}|�ݩ�>;�u����6 ����3~v�����{��z.��1�  ևޟ��2a�=����p}~��z+��`=}7޸@�̣-���q*~�+��c{���}��7�LH:��( ���Z�HKbM��Xy�؝���]3�dr����1]n:1H��[c����c��q�'{�IM���b��<�n�DDc/\y��y�r�������&M�e�\�e�KMLO�G\�
�2c�p�f�����0/����-�c���F����wyDٓ o�oZ���[��2��ڶxc	�^��+B�K�؟.�|8    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/PlayerSpriteSheet.png-107a6f5b2937a266be26ad71e5878dfd.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/player/sprite sheets/PlayerSpriteSheet.png"
dest_files=[ "res://.import/PlayerSpriteSheet.png-107a6f5b2937a266be26ad71e5878dfd.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               [remap]

path="res://Dragable.gdc"
             [remap]

path="res://NextLevel.gdc"
            [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         BlindFold Platformer   application/run/main_scene         res://Level1.tscn      application/config/icon         res://icon.png     display/window/size/width      @     display/window/size/height      �      display/window/size/borderless            display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep)   rendering/environment/default_environment          res://default_env.tres           