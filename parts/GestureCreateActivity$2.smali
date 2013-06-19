.class Lcom/lidroid/parts/GestureCreateActivity$2;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/parts/GestureCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/GestureCreateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lidroid/parts/GestureCreateActivity$2;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lidroid/parts/GestureCreateActivity$2;->this$0:Lcom/lidroid/parts/GestureCreateActivity;

    invoke-virtual {v0, p1}, Lcom/lidroid/parts/GestureCreateActivity;->addGesture(Landroid/view/View;)V

    .line 134
    return-void
.end method
