.class Lcom/lidroid/systemui/quickpanel/PowerWidget$2;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/PowerWidget;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "paramAnonymousView"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/PowerWidget$2;->this$0:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    #calls: Lcom/lidroid/systemui/quickpanel/PowerWidget;->animateCollapse()V
    invoke-static {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->access$2(Lcom/lidroid/systemui/quickpanel/PowerWidget;)V

    .line 209
    const/4 v0, 0x1

    return v0
.end method
