.class Lcom/android/internal/policy/impl/LockScreen$8;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;

.field private final synthetic val$color:I

.field private final synthetic val$iconResourceId:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$8;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$color:I

    iput p5, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$iconResourceId:I

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$color:I

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreen$8;->val$iconResourceId:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1101
    return-void
.end method
