.class Lcom/lidroid/parts/GestureListActivity$2;
.super Ljava/lang/Object;
.source "GestureListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/GestureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/GestureListActivity;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/GestureListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lidroid/parts/GestureListActivity$2;->this$0:Lcom/lidroid/parts/GestureListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$2;->this$0:Lcom/lidroid/parts/GestureListActivity;

    const-class v2, Lcom/lidroid/parts/GestureCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lidroid/parts/GestureListActivity$2;->this$0:Lcom/lidroid/parts/GestureListActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lidroid/parts/GestureListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    return-void
.end method
