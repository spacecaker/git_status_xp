.class public Lcom/iLoong/launcher/theme/ThemeDetailedActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Lcom/iLoong/launcher/theme/ThemeDetailed;

.field private b:I

.field private c:Lcom/iLoong/launcher/theme/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "ThemeDetailedActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/iLoong/launcher/theme/ThemeDetailed;

    invoke-direct {v0, p0}, Lcom/iLoong/launcher/theme/ThemeDetailed;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->a:Lcom/iLoong/launcher/theme/ThemeDetailed;

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->b:I

    iget v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->b:I

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/theme/d;

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->c:Lcom/iLoong/launcher/theme/d;

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->c:Lcom/iLoong/launcher/theme/d;

    iget-object v1, v1, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->a:Lcom/iLoong/launcher/theme/ThemeDetailed;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->a:Lcom/iLoong/launcher/theme/ThemeDetailed;

    iget v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/ThemeDetailed;->a(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->a:Lcom/iLoong/launcher/theme/ThemeDetailed;

    invoke-virtual {v0}, Lcom/iLoong/launcher/theme/ThemeDetailed;->a()V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->b(Landroid/app/Activity;)V

    const-string v0, "ThemeDetailedActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "ThemeDetailedActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v0

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->c:Lcom/iLoong/launcher/theme/d;

    iget-object v1, v1, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemeDetailedActivity;->finish()V

    :cond_0
    return-void
.end method
