.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1673
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1673
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1676
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1678
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$1800(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;-><init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z
    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->access$2000(Landroid/widget/AutoCompleteTextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1702
    :cond_0
    return-void
.end method
