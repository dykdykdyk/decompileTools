.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

.field final synthetic val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 1638
    iput-object p1, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->this$0:Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;

    iput-object p2, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1641
    invoke-static {p2}, Landroid/support/v4/view/WindowInsetsCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 1642
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 1643
    invoke-static {v0}, Landroid/support/v4/view/WindowInsetsCompat;->unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
