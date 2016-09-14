.class final Lcom/nut/blehunter/ui/ba;
.super Ljava/lang/Object;
.source "InputNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/InputNameActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/InputNameActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nut/blehunter/ui/ba;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/ui/ba;->a:Lcom/nut/blehunter/ui/InputNameActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/InputNameActivity;->invalidateOptionsMenu()V

    .line 61
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
