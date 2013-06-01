.class public Lcom/iLoong/launcher/UI3DEngine/c;
.super Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/c;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/iLoong/launcher/UI3DEngine/ViewGroup3D;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/c;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/c;->b:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/UI3DEngine/c;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    invoke-virtual {p0}, Lcom/iLoong/launcher/UI3DEngine/c;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/UI3DEngine/c;->getChildAt(I)Lcom/iLoong/launcher/UI3DEngine/View3D;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iLoong/launcher/UI3DEngine/View3D;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iLoong/launcher/UI3DEngine/c;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/c;->a:Z

    return v0
.end method
