.class final Lcom/nut/blehunter/ui/gq;
.super Ljava/lang/Object;
.source "SilencesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SilencesActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SilencesActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nut/blehunter/ui/gq;->a:Lcom/nut/blehunter/ui/SilencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nut/blehunter/ui/gq;->a:Lcom/nut/blehunter/ui/SilencesActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SilencesActivity;->a(Lcom/nut/blehunter/ui/SilencesActivity;)Z

    .line 62
    if-eqz p2, :cond_0

    .line 63
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "FUNCTION_ENABLED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "NTSilentPeriodEvent"

    const-string v1, "FUNCTION_DISABLED"

    invoke-static {v0, v1}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
