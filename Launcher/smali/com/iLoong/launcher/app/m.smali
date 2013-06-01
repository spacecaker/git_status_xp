.class Lcom/iLoong/launcher/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:[Ljava/lang/String;

.field final synthetic c:Lcom/iLoong/launcher/app/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/iLoong/launcher/app/LauncherModel;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/iLoong/launcher/app/m;->a:I

    iput-object p3, p0, Lcom/iLoong/launcher/app/m;->b:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/iLoong/launcher/app/m;)Lcom/iLoong/launcher/app/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->n(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/iLoong/launcher/app/m;->b:[Ljava/lang/String;

    array-length v6, v4

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->c(Lcom/iLoong/launcher/app/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/app/x;

    move-object v1, v0

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/app/m;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/app/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/app/n;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v3}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/iLoong/launcher/app/n;->b:Ljava/util/ArrayList;

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v0

    iget-object v0, v0, Lcom/iLoong/launcher/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v0

    iget-object v4, v0, Lcom/iLoong/launcher/app/n;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v0}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/iLoong/launcher/app/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v4

    :goto_3
    iget-object v4, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v4}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v4

    iget-object v4, v4, Lcom/iLoong/launcher/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v2, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v2}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v2

    iget-object v2, v2, Lcom/iLoong/launcher/app/n;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v4}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/iLoong/launcher/app/n;->d:Ljava/util/ArrayList;

    :cond_1
    if-nez v1, :cond_8

    const-string v0, "Launcher.Model"

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    return-void

    :cond_3
    move-object v1, v2

    goto/16 :goto_0

    :pswitch_0
    move v0, v5

    :goto_5
    if-ge v0, v6, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mAllAppsList.addPackage "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v4, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v7}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v7, v3, v8}, Lcom/iLoong/launcher/app/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Lcom/iLoong/launcher/theme/i;->f(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const-string v0, "Launcher.Model"

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    aget-object v7, v4, v0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v8

    new-instance v9, Lcom/iLoong/launcher/app/g;

    invoke-direct {v9, p0, v1, v7}, Lcom/iLoong/launcher/app/g;-><init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_1
    move v0, v5

    :goto_6
    if-ge v0, v6, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mAllAppsList.updatePackage "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v4, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v7}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v7, v3, v8}, Lcom/iLoong/launcher/app/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Lcom/iLoong/launcher/theme/i;->g(Ljava/lang/String;)V

    if-nez v1, :cond_5

    const-string v0, "Launcher.Model"

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    aget-object v7, v4, v0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v8

    new-instance v9, Lcom/iLoong/launcher/app/f;

    invoke-direct {v9, p0, v1, v7}, Lcom/iLoong/launcher/app/f;-><init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_2
    move v0, v5

    :goto_7
    if-ge v0, v6, :cond_0

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mAllAppsList.removePackage "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v4, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v3}, Lcom/iLoong/launcher/app/LauncherModel;->j(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/n;

    move-result-object v3

    aget-object v7, v4, v0

    invoke-virtual {v3, v7}, Lcom/iLoong/launcher/app/n;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/iLoong/launcher/theme/i;->c()Lcom/iLoong/launcher/theme/i;

    move-result-object v3

    aget-object v7, v4, v0

    invoke-virtual {v3, v7}, Lcom/iLoong/launcher/theme/i;->e(Ljava/lang/String;)V

    if-nez v1, :cond_6

    const-string v0, "Launcher.Model"

    const-string v1, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    aget-object v3, v4, v0

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->getInstance()Lcom/iLoong/launcher/desktop/iLoongLauncher;

    move-result-object v7

    new-instance v8, Lcom/iLoong/launcher/app/c;

    invoke-direct {v8, p0, v1, v3}, Lcom/iLoong/launcher/app/c;-><init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/iLoong/launcher/desktop/iLoongLauncher;->postRunnable(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/a/b;

    iget-object v7, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v7}, Lcom/iLoong/launcher/app/LauncherModel;->l(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/app/ak;

    move-result-object v7

    iget-object v0, v0, Lcom/iLoong/launcher/a/b;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/iLoong/launcher/app/ak;->a(Landroid/content/ComponentName;)V

    goto/16 :goto_2

    :cond_8
    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v4}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v4

    new-instance v6, Lcom/iLoong/launcher/app/b;

    invoke-direct {v6, p0, v1, v3}, Lcom/iLoong/launcher/app/b;-><init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_9
    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v3}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v3

    new-instance v4, Lcom/iLoong/launcher/app/e;

    invoke-direct {v4, p0, v1, v2}, Lcom/iLoong/launcher/app/e;-><init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_a
    if-eqz v0, :cond_b

    iget v2, p0, Lcom/iLoong/launcher/app/m;->a:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_8
    iget-object v3, p0, Lcom/iLoong/launcher/app/m;->c:Lcom/iLoong/launcher/app/LauncherModel;

    invoke-static {v3}, Lcom/iLoong/launcher/app/LauncherModel;->b(Lcom/iLoong/launcher/app/LauncherModel;)Lcom/iLoong/launcher/b/g;

    move-result-object v3

    new-instance v4, Lcom/iLoong/launcher/app/d;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/iLoong/launcher/app/d;-><init>(Lcom/iLoong/launcher/app/m;Lcom/iLoong/launcher/app/x;Ljava/util/ArrayList;Z)V

    invoke-virtual {v3, v4}, Lcom/iLoong/launcher/b/g;->a(Ljava/lang/Runnable;)V

    :cond_b
    sget-boolean v0, Lcom/iLoong/launcher/desktop/iLoongApplication;->c:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/iLoong/launcher/Desktop3D/cb;->at:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/iLoong/launcher/Desktop3D/SendMsgToAndroid;->updatePackage()V

    goto/16 :goto_4

    :cond_c
    move v2, v5

    goto :goto_8

    :cond_d
    move-object v0, v2

    goto/16 :goto_3

    :cond_e
    move-object v3, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
