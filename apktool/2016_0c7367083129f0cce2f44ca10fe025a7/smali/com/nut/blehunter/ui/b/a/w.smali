.class final Lcom/nut/blehunter/ui/b/a/w;
.super Ljava/lang/Object;
.source "NumberPickerDialogFragment.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/a/v;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/a/v;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a/w;->a:Lcom/nut/blehunter/ui/b/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a/w;->a:Lcom/nut/blehunter/ui/b/a/v;

    invoke-static {}, Lcom/nut/blehunter/ui/b/a/v;->a()[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/b/a/v;->a(Lcom/nut/blehunter/ui/b/a/v;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method
