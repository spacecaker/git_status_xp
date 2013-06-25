.class Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungWidgetsLoader"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    .line 438
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 439
    return-void
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 451
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 452
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 453
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #calls: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v5, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 460
    .local v4, loadWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 462
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 463
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-eqz v5, :cond_4

    .line 475
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-nez v5, :cond_3

    .line 476
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    const/4 v6, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$402(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Z)Z

    .line 481
    :cond_3
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_0

    .line 464
    .restart local v2       #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #calls: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    invoke-static {v5, v0, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v3

    .line 465
    .local v3, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v3, :cond_1

    .line 467
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.sec.android.widgetapp.stockclock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 468
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #calls: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    #getter for: Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    .line 443
    return-void
.end method
