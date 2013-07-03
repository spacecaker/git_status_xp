.class Lcom/lidroid/parts/PowerWidgetOrderActivity$1;
.super Ljava/lang/Object;
.source "PowerWidgetOrderActivity.java"

# interfaces
.implements Lcom/lidroid/widgets/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/parts/PowerWidgetOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/parts/PowerWidgetOrderActivity;


# direct methods
.method constructor <init>(Lcom/lidroid/parts/PowerWidgetOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;->this$0:Lcom/lidroid/parts/PowerWidgetOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;->this$0:Lcom/lidroid/parts/PowerWidgetOrderActivity;

    invoke-static {v2}, Lcom/lidroid/util/PowerWidgetUtil;->getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/util/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    .local v1, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 82
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, button:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 85
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;->this$0:Lcom/lidroid/parts/PowerWidgetOrderActivity;

    invoke-static {v1}, Lcom/lidroid/util/PowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lidroid/util/PowerWidgetUtil;->saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;->this$0:Lcom/lidroid/parts/PowerWidgetOrderActivity;

    #getter for: Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonAdapter:Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;
    invoke-static {v2}, Lcom/lidroid/parts/PowerWidgetOrderActivity;->access$000(Lcom/lidroid/parts/PowerWidgetOrderActivity;)Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;->reloadButtons()V

    .line 93
    iget-object v2, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;->this$0:Lcom/lidroid/parts/PowerWidgetOrderActivity;

    #getter for: Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/lidroid/parts/PowerWidgetOrderActivity;->access$100(Lcom/lidroid/parts/PowerWidgetOrderActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 96
    .end local v0           #button:Ljava/lang/String;
    :cond_0
    return-void
.end method
