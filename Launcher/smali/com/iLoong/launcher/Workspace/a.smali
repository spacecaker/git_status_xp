.class public Lcom/iLoong/launcher/Workspace/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/pm/ResolveInfo;

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field final synthetic h:Lcom/iLoong/launcher/Workspace/c;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Workspace/c;Landroid/content/res/Resources;ILandroid/graphics/Bitmap;ILandroid/content/pm/ResolveInfo;Z)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Workspace/a;->h:Lcom/iLoong/launcher/Workspace/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/a;->b:Ljava/lang/CharSequence;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/a;->c:Landroid/graphics/drawable/Drawable;

    iput p5, p0, Lcom/iLoong/launcher/Workspace/a;->d:I

    iput-object p6, p0, Lcom/iLoong/launcher/Workspace/a;->a:Landroid/content/pm/ResolveInfo;

    iput-boolean p7, p0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/iLoong/launcher/Workspace/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Workspace/a;->h:Lcom/iLoong/launcher/Workspace/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    iput-object p2, p0, Lcom/iLoong/launcher/Workspace/a;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/iLoong/launcher/Workspace/a;->c:Landroid/graphics/drawable/Drawable;

    iput-boolean p6, p0, Lcom/iLoong/launcher/Workspace/a;->e:Z

    iput-object p4, p0, Lcom/iLoong/launcher/Workspace/a;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/iLoong/launcher/Workspace/a;->g:Ljava/lang/String;

    return-void
.end method
