.class Lcom/android/music/RenamePlaylist$1;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/RenamePlaylist;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$1;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/music/RenamePlaylist$1;->this$0:Lcom/android/music/RenamePlaylist;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/music/RenamePlaylist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/music/RenamePlaylist$1;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/music/RenamePlaylist;->access$000(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 75
    return-void
.end method
