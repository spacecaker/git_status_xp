.class public Lcom/iLoong/launcher/widget/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/iLoong/launcher/widget/d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJIFF)I
    .locals 2

    invoke-static/range {p0 .. p6}, Lcom/iLoong/launcher/widget/d;->b(JJIFF)Landroid/view/MotionEvent;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(I)Landroid/view/MotionEvent;
    .locals 1

    sget-object v0, Lcom/iLoong/launcher/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    return-object v0
.end method

.method private static b(JJIFF)Landroid/view/MotionEvent;
    .locals 8

    const/4 v7, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    sget-object v1, Lcom/iLoong/launcher/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
