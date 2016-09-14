.class public final Lcom/nut/blehunter/rxApi/f;
.super Ljava/lang/Object;
.source "HandleErrorHelper.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 97
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ApiError;

    const/16 v2, 0x7d1

    const v3, 0x7f0600f3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/nut/blehunter/rxApi/model/ApiError;-><init>(ILjava/lang/String;)V

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ApiError;

    const/16 v2, 0x7d5

    const v3, 0x7f0600f5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/nut/blehunter/rxApi/model/ApiError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 177
    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 178
    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 179
    const v1, 0x7f060085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 180
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 6060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 108
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 169
    const-string v0, " error= %s(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6039
    invoke-static {p0, v4, p2}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 110
    :sswitch_1
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 113
    :sswitch_2
    invoke-static {p0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 1194
    :sswitch_3
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1195
    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1196
    const v1, 0x7f06008c

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1197
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 2060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :sswitch_4
    const v0, 0x7f060147

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 122
    :sswitch_5
    const v0, 0x7f0601e7

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 126
    :sswitch_6
    const v0, 0x7f0600f3

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 129
    :sswitch_7
    const v0, 0x7f0600f4

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 132
    :sswitch_8
    const v0, 0x7f0600f6

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 138
    :sswitch_9
    const v0, 0x7f0601e8

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 2202
    :sswitch_a
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 2203
    const v1, 0x7f0600ee

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 2204
    const v1, 0x7f0600cd

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 2205
    const v1, 0x7f060083

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 2206
    const v1, 0x7f060092

    new-instance v2, Lcom/nut/blehunter/rxApi/g;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/rxApi/g;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 2215
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 3060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3220
    :sswitch_b
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 3221
    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 3222
    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 3223
    const v1, 0x7f060085

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 3224
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 4060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :sswitch_c
    const v0, 0x7f0600ce

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 151
    :sswitch_d
    const v0, 0x7f0600cc

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 154
    :sswitch_e
    const v0, 0x7f0600d4

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 157
    :sswitch_f
    const v0, 0x7f060042

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 163
    :sswitch_10
    const v0, 0x7f060062

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 4277
    :sswitch_11
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 4278
    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 4279
    const v1, 0x7f0600a3

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 4280
    const v1, 0x7f06008e

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 4281
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 5060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_8
        0xcb -> :sswitch_b
        0xcc -> :sswitch_1
        0xcd -> :sswitch_2
        0xcf -> :sswitch_0
        0xd0 -> :sswitch_9
        0xd2 -> :sswitch_3
        0xd3 -> :sswitch_b
        0xd4 -> :sswitch_a
        0xdc -> :sswitch_4
        0xdd -> :sswitch_5
        0x12f -> :sswitch_10
        0x138 -> :sswitch_e
        0x13b -> :sswitch_d
        0x140 -> :sswitch_11
        0x142 -> :sswitch_c
        0x14a -> :sswitch_0
        0x14b -> :sswitch_f
        0x14d -> :sswitch_0
        0x7d1 -> :sswitch_6
        0x7d3 -> :sswitch_6
    .end sparse-switch
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 249
    const v1, 0x7f0600c1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 250
    const v1, 0x7f060083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 251
    const v1, 0x7f060085

    new-instance v2, Lcom/nut/blehunter/rxApi/h;

    invoke-direct {v2, p1, p2, p0}, Lcom/nut/blehunter/rxApi/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 264
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 9060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 186
    const v1, 0x7f0600eb

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 187
    const v1, 0x7f0600c3

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 188
    const v1, 0x7f060085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 189
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 7060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static c(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 230
    const v1, 0x7f0600c0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 231
    const v1, 0x7f06008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 241
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 8060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static d(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v0, p0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 270
    const v1, 0x7f0600c6

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 271
    const v1, 0x7f060085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 272
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v0

    .line 10060
    const-string v1, "baseDialog"

    invoke-virtual {v0, p0, v1}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 274
    return-void
.end method
