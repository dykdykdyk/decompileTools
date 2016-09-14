.class final Lcom/nut/blehunter/ui/g;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nut/blehunter/ui/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/nut/blehunter/ui/g;->b:Lcom/nut/blehunter/ui/b;

    iput-object p2, p0, Lcom/nut/blehunter/ui/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/nut/blehunter/ui/g;->a:Landroid/content/Context;

    const-string v2, "update_new_version_time"

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 446
    return-void
.end method
