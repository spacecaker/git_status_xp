.class Lcom/android/systemui/statusbar/phone/NavbarEditor$3;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

.field final synthetic val$list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;Landroid/view/View;Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;->val$list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;->val$view:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;->val$list:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$3;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mVertical:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setInfo(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method
