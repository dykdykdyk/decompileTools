.class final Lcom/nut/blehunter/ui/a/r;
.super Ljava/lang/Object;
.source "NutAdapter.java"

# interfaces
.implements Lcom/nut/blehunter/b/e;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/a/q;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/q;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/r;->b:Lcom/nut/blehunter/ui/a/q;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/r;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/b/a;I)V
    .locals 4

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/r;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v0, v0, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    iput-wide v0, p1, Lcom/nut/blehunter/b/a;->a:J

    .line 129
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/r;->b:Lcom/nut/blehunter/ui/a/q;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/r;->b:Lcom/nut/blehunter/ui/a/q;

    .line 1035
    iget-object v1, v1, Lcom/nut/blehunter/ui/a/q;->d:Ljava/util/ArrayList;

    .line 129
    iget-object v2, p0, Lcom/nut/blehunter/ui/a/r;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/a/q;->c(I)V

    .line 130
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/r;->b:Lcom/nut/blehunter/ui/a/q;

    .line 2035
    iget-object v0, v0, Lcom/nut/blehunter/ui/a/q;->c:Landroid/view/LayoutInflater;

    .line 130
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/r;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    .line 3023
    const-string v2, "nut_disconnect_address"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3012
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3013
    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3014
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    :cond_0
    return-void
.end method
