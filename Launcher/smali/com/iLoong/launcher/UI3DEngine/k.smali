.class public Lcom/iLoong/launcher/UI3DEngine/k;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/iLoong/launcher/UI3DEngine/f;

.field b:Lcom/badlogic/gdx/utils/OrderedMap;

.field c:Lcom/badlogic/gdx/graphics/Pixmap;

.field d:Lcom/iLoong/launcher/UI3DEngine/g;

.field e:Lcom/badlogic/gdx/utils/Array;

.field f:Lcom/badlogic/gdx/files/FileHandle;

.field g:Z

.field final synthetic h:Lcom/iLoong/launcher/UI3DEngine/l;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/UI3DEngine/l;)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/UI3DEngine/k;->h:Lcom/iLoong/launcher/UI3DEngine/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/UI3DEngine/k;->e:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iLoong/launcher/UI3DEngine/k;->g:Z

    return-void
.end method
