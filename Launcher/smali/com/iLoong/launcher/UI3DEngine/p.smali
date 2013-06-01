.class public Lcom/iLoong/launcher/UI3DEngine/p;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/p;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/p;->transform:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/p;->transform:Z

    return-void
.end method


# virtual methods
.method public is3dRotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
