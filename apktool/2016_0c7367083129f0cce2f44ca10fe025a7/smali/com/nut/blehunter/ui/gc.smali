.class final Lcom/nut/blehunter/ui/gc;
.super Ljava/lang/Object;
.source "SelectWiFiActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SelectWiFiActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SelectWiFiActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 202
    iget-object v0, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->d(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/aj;

    .line 203
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    .line 1020
    iget-object v3, v0, Lcom/nut/blehunter/entity/aj;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->c(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 219
    :goto_0
    return-void

    .line 2016
    :cond_0
    iget-boolean v1, v0, Lcom/nut/blehunter/entity/aj;->b:Z

    .line 206
    if-nez v1, :cond_9

    .line 2028
    iput-boolean v5, v0, Lcom/nut/blehunter/entity/aj;->b:Z

    .line 208
    iget-object v1, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->e(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Ljava/lang/String;

    move-result-object v2

    .line 3020
    iget-object v3, v0, Lcom/nut/blehunter/entity/aj;->a:Ljava/lang/String;

    .line 3126
    iget-object v0, v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    if-eqz v0, :cond_1

    .line 3130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->f(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Z

    .line 215
    :goto_2
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->g(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Lcom/nut/blehunter/entity/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 216
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 217
    iput v5, v0, Landroid/os/Message;->what:I

    .line 218
    iget-object v1, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->h(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3134
    :cond_2
    iget-object v0, v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    const-class v4, Lcom/nut/blehunter/entity/ak;

    .line 4049
    invoke-static {v0, v4}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 3134
    check-cast v0, Lcom/nut/blehunter/entity/ak;

    .line 3136
    const-string v4, "home"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3137
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 3138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    .line 3140
    :cond_3
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
    :cond_4
    :goto_3
    iget-object v2, v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    .line 3153
    const-string v0, "silent_regions_add"

    .line 4281
    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 3141
    :cond_5
    const-string v4, "company"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3142
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    .line 3143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    .line 3145
    :cond_6
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3146
    :cond_7
    const-string v4, "other"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3147
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    .line 3148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    .line 3150
    :cond_8
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5028
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nut/blehunter/entity/aj;->b:Z

    .line 212
    iget-object v1, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->e(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Ljava/lang/String;

    move-result-object v2

    .line 6020
    iget-object v3, v0, Lcom/nut/blehunter/entity/aj;->a:Ljava/lang/String;

    .line 6158
    iget-object v0, v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    if-eqz v0, :cond_a

    .line 6162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/gc;->a:Lcom/nut/blehunter/ui/SelectWiFiActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/SelectWiFiActivity;->f(Lcom/nut/blehunter/ui/SelectWiFiActivity;)Z

    goto/16 :goto_2

    .line 6166
    :cond_b
    iget-object v0, v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    const-class v4, Lcom/nut/blehunter/entity/ak;

    .line 7049
    invoke-static {v0, v4}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 6166
    check-cast v0, Lcom/nut/blehunter/entity/ak;

    .line 6169
    const-string v4, "home"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 6170
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6171
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6182
    :cond_c
    :goto_5
    iget-object v1, v1, Lcom/nut/blehunter/ui/SelectWiFiActivity;->a:Lcom/nut/blehunter/entity/User;

    invoke-static {}, Lcom/nut/blehunter/e;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nut/blehunter/entity/User;->n:Ljava/lang/String;

    goto :goto_4

    .line 6173
    :cond_d
    const-string v4, "company"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6174
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6175
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 6177
    :cond_e
    const-string v4, "other"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6178
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6179
    iget-object v2, v0, Lcom/nut/blehunter/entity/ak;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5
.end method
