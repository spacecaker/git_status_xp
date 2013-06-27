.class Lcom/android/music/RenamePlaylist$4;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RenamePlaylist;
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
    .line 145
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$4;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 148
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$4;->this$0:Lcom/android/music/RenamePlaylist;

    #calls: Lcom/android/music/RenamePlaylist;->setSaveButton()V
    invoke-static {v0}, Lcom/android/music/RenamePlaylist;->access$100(Lcom/android/music/RenamePlaylist;)V

    .line 152
    return-void
.end method
