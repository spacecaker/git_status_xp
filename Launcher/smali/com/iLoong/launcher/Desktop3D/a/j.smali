.class public Lcom/iLoong/launcher/Desktop3D/a/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iLoong/launcher/Desktop3D/a/j;->a:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0074

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0075

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0076

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0078

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0077

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0079

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c007a

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c007b

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c007c

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c007e

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c007d

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c007f

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/iLoong/launcher/Desktop3D/a/j;->b:Ljava/util/Map;

    const v1, 0x7f0c0080

    invoke-static {v1}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFI)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->getWidth()F

    move-result v4

    cmpl-float v0, p2, v7

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->hide()V

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    :goto_0
    if-ne p1, p0, :cond_0

    const/4 p4, 0x0

    :cond_0
    packed-switch p4, :pswitch_data_0

    sget-boolean v5, Lcom/iLoong/launcher/Desktop3D/a/j;->a:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/iLoong/launcher/Desktop3D/a/i;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFFZ)V

    :goto_1
    instance-of v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    neg-float v1, p2

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->J:F

    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    iput v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->L:F

    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    add-float v1, p2, v6

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->M:F

    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    add-float v1, p2, v6

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->K:F

    check-cast p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v6, v0

    iput v0, p0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->N:F

    :cond_1
    instance-of v0, p1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    iput v7, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->J:F

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    add-float v1, p2, v6

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->L:F

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    iput v6, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->M:F

    move-object v0, p1

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    neg-float v1, p2

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->K:F

    check-cast p1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p1, Lcom/iLoong/launcher/Desktop3D/CellLayout3D;->N:F

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    invoke-virtual {p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;->show()V

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/r;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/l;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto :goto_1

    :pswitch_2
    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    move-object v1, p1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-static {v0, v1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/d;->a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V

    goto :goto_1

    :pswitch_3
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/m;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto :goto_1

    :pswitch_4
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/a;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto :goto_1

    :pswitch_5
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/b;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto :goto_1

    :pswitch_6
    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    move-object v1, p1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-static {v0, v1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/n;->a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V

    goto :goto_1

    :pswitch_7
    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    move-object v1, p1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-static {v0, v1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/w;->a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V

    goto/16 :goto_1

    :pswitch_8
    move-object v0, p0

    check-cast v0, Lcom/iLoong/launcher/Desktop3D/c;

    move-object v1, p1

    check-cast v1, Lcom/iLoong/launcher/Desktop3D/c;

    invoke-static {v0, v1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/h;->a(Lcom/iLoong/launcher/Desktop3D/c;Lcom/iLoong/launcher/Desktop3D/c;FFF)V

    goto/16 :goto_1

    :pswitch_9
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/f;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_a
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/e;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_b
    invoke-static {p0, p1, p2, v4}, Lcom/iLoong/launcher/Desktop3D/a/k;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FF)V

    goto/16 :goto_1

    :pswitch_c
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/g;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_d
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/v;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_e
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/t;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_f
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/p;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_10
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/o;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_11
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/u;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_12
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/c;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_13
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/q;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p0, p1, p2, p3, v4}, Lcom/iLoong/launcher/Desktop3D/a/s;->a(Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;FFF)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/iLoong/launcher/Desktop3D/a/j;->a:Z

    return-void
.end method
