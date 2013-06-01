.class public Lcom/iLoong/launcher/HotSeat3D/d;
.super Lcom/iLoong/launcher/UI3DEngine/p;


# instance fields
.field private a:Lcom/iLoong/launcher/HotSeat3D/e;

.field private b:Lcom/iLoong/launcher/HotSeat3D/h;

.field private c:Lcom/iLoong/launcher/HotSeat3D/h;

.field private d:Lcom/iLoong/launcher/HotSeat3D/h;

.field private e:Lcom/iLoong/launcher/HotSeat3D/h;

.field private f:Lcom/iLoong/launcher/HotSeat3D/h;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->a:Lcom/iLoong/launcher/HotSeat3D/e;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->b:Lcom/iLoong/launcher/HotSeat3D/h;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->c:Lcom/iLoong/launcher/HotSeat3D/h;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->d:Lcom/iLoong/launcher/HotSeat3D/h;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->e:Lcom/iLoong/launcher/HotSeat3D/h;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->f:Lcom/iLoong/launcher/HotSeat3D/h;

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/d;->h:Landroid/content/Context;

    invoke-virtual {p0, v1, v1}, Lcom/iLoong/launcher/HotSeat3D/d;->setPosition(FF)V

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/d;->setSize(FF)V

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/iLoong/launcher/HotSeat3D/d;->setOrigin(FF)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(ZZZZ)V
    .locals 0

    return-void
.end method
