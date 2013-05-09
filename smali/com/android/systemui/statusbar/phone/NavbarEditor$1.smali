.class Lcom/android/systemui/statusbar/phone/NavbarEditor$1;
.super Ljava/lang/Object;
.source "NavbarEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavbarEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NavbarEditor;->mLongPressed:Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$1;->this$0:Lcom/android/systemui/statusbar/phone/NavbarEditor;

    #getter for: Lcom/android/systemui/statusbar/phone/NavbarEditor;->mParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->access$000(Lcom/android/systemui/statusbar/phone/NavbarEditor;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 164
    :cond_0
    return-void
.end method
