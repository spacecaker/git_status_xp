.class public Lcom/iLoong/launcher/theme/ThemeChangeActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/iLoong/launcher/theme/i;

.field private b:Lcom/iLoong/launcher/theme/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "ThemeChangeActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    const v0, 0x7f0c00e6

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->sendOurToastMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->f()Lcom/iLoong/launcher/theme/d;

    move-result-object v1

    iput-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->b:Lcom/iLoong/launcher/theme/d;

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    move v1, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    invoke-virtual {v1}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/theme/d;

    iput-object v0, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->b:Lcom/iLoong/launcher/theme/d;

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->b:Lcom/iLoong/launcher/theme/d;

    iget-object v1, v1, Lcom/iLoong/launcher/theme/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->b:Lcom/iLoong/launcher/theme/d;

    iget-object v4, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    invoke-virtual {v4}, Lcom/iLoong/launcher/theme/i;->g()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    iget-object v1, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->b:Lcom/iLoong/launcher/theme/d;

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/theme/i;->b(Lcom/iLoong/launcher/theme/d;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ThemeChangeActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/iLoong/launcher/theme/ThemeChangeActivity;->a:Lcom/iLoong/launcher/theme/i;

    invoke-virtual {v0, p0}, Lcom/iLoong/launcher/theme/i;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "ThemeChangeActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
