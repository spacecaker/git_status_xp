.class final Lcom/iLoong/launcher/UI3DEngine/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/iLoong/launcher/UI3DEngine/f;

.field public b:Lcom/iLoong/launcher/UI3DEngine/f;

.field public c:Lcom/badlogic/gdx/math/Rectangle;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>(IIIILcom/iLoong/launcher/UI3DEngine/f;Lcom/iLoong/launcher/UI3DEngine/f;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/f;->c:Lcom/badlogic/gdx/math/Rectangle;

    iput-object p5, p0, Lcom/iLoong/launcher/UI3DEngine/f;->a:Lcom/iLoong/launcher/UI3DEngine/f;

    iput-object p6, p0, Lcom/iLoong/launcher/UI3DEngine/f;->b:Lcom/iLoong/launcher/UI3DEngine/f;

    iput-object p7, p0, Lcom/iLoong/launcher/UI3DEngine/f;->d:Ljava/lang/String;

    return-void
.end method
