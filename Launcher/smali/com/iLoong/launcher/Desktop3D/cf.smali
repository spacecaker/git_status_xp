.class public Lcom/iLoong/launcher/Desktop3D/cf;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CellLayoutChildren"

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Desktop3D/cf;->a:[I

    return-void
.end method
