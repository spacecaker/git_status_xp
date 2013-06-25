.class Lcom/sec/android/app/twlauncher/MenuManager$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    #getter for: Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$1;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/twlauncher/MenuManager;->mIsIndicatorShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->access$202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z

    .line 217
    :cond_0
    return-void
.end method
