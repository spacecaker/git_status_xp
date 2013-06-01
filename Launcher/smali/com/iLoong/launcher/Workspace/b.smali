.class public Lcom/iLoong/launcher/Workspace/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public b:Landroid/graphics/drawable/Drawable;

.field public final c:I

.field final synthetic d:Lcom/iLoong/launcher/Workspace/e;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/Workspace/e;Landroid/content/res/Resources;III)V
    .locals 1

    iput-object p1, p0, Lcom/iLoong/launcher/Workspace/b;->d:Lcom/iLoong/launcher/Workspace/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/b;->a:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/b;->b:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput p5, p0, Lcom/iLoong/launcher/Workspace/b;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/b;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
