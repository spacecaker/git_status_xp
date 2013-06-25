.class Lcom/sec/android/app/twlauncher/TopFourZone$2;
.super Ljava/lang/Object;
.source "TopFourZone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/TopFourZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/TopFourZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/TopFourZone;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$2;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 389
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_ICONMODE:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 397
    :goto_0
    return v1

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone$2;->this$0:Lcom/sec/android/app/twlauncher/TopFourZone;

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v0           #tag:Ljava/lang/Object;
    #calls: Lcom/sec/android/app/twlauncher/TopFourZone;->startDragItem(Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    invoke-static {v1, p1, v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->access$100(Lcom/sec/android/app/twlauncher/TopFourZone;Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    :cond_1
    move v1, v2

    .line 397
    goto :goto_0
.end method
