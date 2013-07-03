.class public Lcom/lidroid/parts/PowerWidgetOrderActivity;
.super Landroid/app/ListActivity;
.source "PowerWidgetOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerWidgetOrderActivity"


# instance fields
.field private mButtonAdapter:Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

.field private mButtonList:Landroid/widget/ListView;

.field private mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;

    invoke-direct {v0, p0}, Lcom/lidroid/parts/PowerWidgetOrderActivity$1;-><init>(Lcom/lidroid/parts/PowerWidgetOrderActivity;)V

    iput-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/parts/PowerWidgetOrderActivity;)Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonAdapter:Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lidroid/parts/PowerWidgetOrderActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/PowerWidgetOrderActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lidroid/parts/PowerWidgetOrderActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonList:Landroid/widget/ListView;

    .line 54
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/lidroid/widgets/TouchInterceptor;

    iget-object v1, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mDropListener:Lcom/lidroid/widgets/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/lidroid/widgets/TouchInterceptor;->setDropListener(Lcom/lidroid/widgets/TouchInterceptor$DropListener;)V

    .line 55
    new-instance v0, Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

    invoke-direct {v0, p0, p0}, Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;-><init>(Lcom/lidroid/parts/PowerWidgetOrderActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonAdapter:Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

    .line 56
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonAdapter:Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

    invoke-virtual {p0, v0}, Lcom/lidroid/parts/PowerWidgetOrderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/lidroid/widgets/TouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/lidroid/widgets/TouchInterceptor;->setDropListener(Lcom/lidroid/widgets/TouchInterceptor$DropListener;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/lidroid/parts/PowerWidgetOrderActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonAdapter:Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;

    invoke-virtual {v0}, Lcom/lidroid/parts/PowerWidgetOrderActivity$ButtonAdapter;->reloadButtons()V

    .line 71
    iget-object v0, p0, Lcom/lidroid/parts/PowerWidgetOrderActivity;->mButtonList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 72
    return-void
.end method
