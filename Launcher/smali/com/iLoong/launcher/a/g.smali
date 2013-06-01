.class public Lcom/iLoong/launcher/a/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/content/ComponentName;

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/iLoong/launcher/a/g;->a:I

    iput v0, p0, Lcom/iLoong/launcher/a/g;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/a/g;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/a/g;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iLoong/launcher/a/g;->f:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/a/g;->g:Z

    iput-boolean v1, p0, Lcom/iLoong/launcher/a/g;->h:Z

    return-void
.end method
