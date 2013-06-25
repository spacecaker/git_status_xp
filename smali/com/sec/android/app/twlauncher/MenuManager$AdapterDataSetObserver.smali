.class Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$900(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 2132
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 2134
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 2136
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #calls: Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$900(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 2141
    return-void
.end method
