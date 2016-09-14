.class final Lcom/nut/blehunter/ui/b/y;
.super Ljava/lang/Object;
.source "NotDisturbSilenceFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/x;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/x;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/y;->a:Lcom/nut/blehunter/ui/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/y;->a:Lcom/nut/blehunter/ui/b/x;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/x;->a(Lcom/nut/blehunter/ui/b/x;)Z

    .line 78
    if-eqz p2, :cond_0

    .line 79
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "FUNCTION_ENABLED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "FUNCTION_DISABLED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
