.class public Lcom/iLoong/launcher/HotSeat3D/h;
.super Lcom/iLoong/launcher/min3d/Object3DBase;


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/min3d/Object3DBase;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/h;->a:Landroid/content/Context;

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/h;->b:F

    iput v1, p0, Lcom/iLoong/launcher/HotSeat3D/h;->c:F

    return-void
.end method
