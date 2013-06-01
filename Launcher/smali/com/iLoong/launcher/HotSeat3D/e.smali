.class public Lcom/iLoong/launcher/HotSeat3D/e;
.super Lcom/iLoong/launcher/min3d/Object3DBase;


# static fields
.field private static c:F


# instance fields
.field private a:Landroid/content/Context;

.field private b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/iLoong/launcher/HotSeat3D/e;->c:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/min3d/Object3DBase;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/HotSeat3D/e;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iLoong/launcher/HotSeat3D/e;->b:F

    return-void
.end method
