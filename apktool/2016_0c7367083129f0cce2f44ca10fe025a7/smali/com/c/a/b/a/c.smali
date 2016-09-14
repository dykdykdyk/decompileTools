.class public final Lcom/c/a/b/a/c;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:Lcom/c/a/b/a/a;

.field private h:Landroid/content/SharedPreferences$Editor;

.field private i:Lcom/c/a/b/a/b;

.field private j:Landroid/content/Context;

.field private k:Lcom/c/a/b/a/d;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/b/a/c;->a:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/b/a/c;->b:Ljava/lang/String;

    .line 22
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->c:Z

    .line 23
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->d:Z

    .line 24
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->e:Z

    .line 25
    iput-object v1, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    .line 26
    iput-object v1, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    .line 27
    iput-object v1, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v1, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    .line 29
    iput-object v1, p0, Lcom/c/a/b/a/c;->j:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    .line 31
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->l:Z

    .line 35
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->c:Z

    .line 36
    iput-boolean v7, p0, Lcom/c/a/b/a/c;->l:Z

    .line 37
    iput-object p3, p0, Lcom/c/a/b/a/c;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/c/a/b/a/c;->b:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/c/a/b/a/c;->j:Landroid/content/Context;

    .line 42
    if-eqz p1, :cond_d

    .line 43
    invoke-virtual {p1, p3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    const-string v1, "t"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 51
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 52
    iput-boolean v7, p0, Lcom/c/a/b/a/c;->e:Z

    iput-boolean v7, p0, Lcom/c/a/b/a/c;->d:Z

    .line 61
    :goto_1
    iget-boolean v4, p0, Lcom/c/a/b/a/c;->d:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/c/a/b/a/c;->e:Z

    if-eqz v4, :cond_c

    .line 62
    :cond_0
    if-eqz p1, :cond_c

    .line 63
    invoke-static {p2}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 64
    invoke-direct {p0, p2}, Lcom/c/a/b/a/c;->b(Ljava/lang/String;)Lcom/c/a/b/a/d;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    .line 65
    iget-object v4, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    if-eqz v4, :cond_c

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    invoke-virtual {v4, p3}, Lcom/c/a/b/a/d;->a(Ljava/lang/String;)Lcom/c/a/b/a/a;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    .line 70
    iget-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    const-string v5, "t"

    invoke-interface {v4, v5}, Lcom/c/a/b/a/a;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 90
    :try_start_1
    iget-object v6, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    const-string v7, "t2"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v6

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    const-string v1, "t2"

    invoke-interface {v0, v1}, Lcom/c/a/b/a/a;->a(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-wide v0

    .line 92
    cmp-long v4, v6, v0

    if-gez v4, :cond_8

    cmp-long v4, v6, v2

    if-lez v4, :cond_8

    .line 94
    :try_start_3
    iget-object v4, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-static {v4, v5}, Lcom/c/a/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/c/a/b/a/a;)V

    .line 95
    iget-object v4, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    invoke-virtual {v4, p3}, Lcom/c/a/b/a/d;->a(Ljava/lang/String;)Lcom/c/a/b/a/a;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 126
    :cond_1
    :goto_2
    cmp-long v4, v6, v0

    if-nez v4, :cond_2

    cmp-long v4, v6, v2

    if-nez v4, :cond_5

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 127
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    iget-boolean v8, p0, Lcom/c/a/b/a/c;->l:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/c/a/b/a/c;->l:Z

    if-eqz v8, :cond_5

    cmp-long v6, v6, v2

    if-nez v6, :cond_5

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    const-string v1, "t2"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-interface {v0}, Lcom/c/a/b/a/a;->c()Lcom/c/a/b/a/b;

    move-result-object v0

    .line 138
    const-string v1, "t2"

    invoke-interface {v0, v1, v4, v5}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;J)Lcom/c/a/b/a/b;

    .line 139
    invoke-interface {v0}, Lcom/c/a/b/a/b;->b()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 146
    :cond_5
    :goto_3
    return-void

    .line 53
    :cond_6
    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 55
    iput-boolean v7, p0, Lcom/c/a/b/a/c;->d:Z

    .line 56
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->e:Z

    goto/16 :goto_1

    .line 58
    :cond_7
    iput-boolean v6, p0, Lcom/c/a/b/a/c;->e:Z

    iput-boolean v6, p0, Lcom/c/a/b/a/c;->d:Z

    goto/16 :goto_1

    .line 98
    :cond_8
    cmp-long v4, v6, v0

    if-lez v4, :cond_9

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 100
    :try_start_5
    iget-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    iget-object v5, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    invoke-static {v4, v5}, Lcom/c/a/b/a/c;->a(Lcom/c/a/b/a/a;Landroid/content/SharedPreferences;)V

    .line 101
    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    goto :goto_2

    :catch_0
    move-exception v4

    move-wide v4, v6

    :goto_4
    move-wide v6, v4

    goto :goto_2

    .line 103
    :cond_9
    cmp-long v4, v6, v2

    if-nez v4, :cond_a

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 104
    iget-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    iget-object v5, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    invoke-static {v4, v5}, Lcom/c/a/b/a/c;->a(Lcom/c/a/b/a/a;Landroid/content/SharedPreferences;)V

    .line 105
    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 107
    :cond_a
    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    cmp-long v4, v6, v2

    if-lez v4, :cond_b

    .line 108
    iget-object v4, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-static {v4, v5}, Lcom/c/a/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/c/a/b/a/a;)V

    .line 109
    iget-object v4, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    invoke-virtual {v4, p3}, Lcom/c/a/b/a/d;->a(Ljava/lang/String;)Lcom/c/a/b/a/a;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    goto/16 :goto_2

    .line 112
    :cond_b
    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-static {v4, v5}, Lcom/c/a/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/c/a/b/a/a;)V

    .line 114
    iget-object v4, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    invoke-virtual {v4, p3}, Lcom/c/a/b/a/d;->a(Ljava/lang/String;)Lcom/c/a/b/a/a;

    move-result-object v4

    iput-object v4, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v4

    move-wide v4, v0

    move-wide v0, v2

    goto :goto_4

    :catch_3
    move-exception v6

    move-wide v10, v4

    move-wide v4, v0

    move-wide v0, v10

    goto :goto_4

    :catch_4
    move-exception v0

    move-wide v0, v4

    move-wide v4, v6

    goto :goto_4

    :cond_c
    move-wide v6, v0

    move-wide v0, v2

    goto/16 :goto_2

    :cond_d
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;Lcom/c/a/b/a/a;)V
    .locals 6

    .prologue
    .line 171
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 172
    invoke-interface {p1}, Lcom/c/a/b/a/a;->c()Lcom/c/a/b/a/b;

    move-result-object v2

    .line 174
    invoke-interface {v2}, Lcom/c/a/b/a/b;->a()Lcom/c/a/b/a/b;

    .line 175
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 176
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 180
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 181
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/b/a/b;

    goto :goto_0

    .line 182
    :cond_1
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 183
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;I)Lcom/c/a/b/a/b;

    goto :goto_0

    .line 184
    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 185
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;J)Lcom/c/a/b/a/b;

    goto :goto_0

    .line 186
    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 187
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;F)Lcom/c/a/b/a/b;

    goto :goto_0

    .line 188
    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 189
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;Z)Lcom/c/a/b/a/b;

    goto :goto_0

    .line 193
    :cond_5
    invoke-interface {v2}, Lcom/c/a/b/a/b;->b()Z

    .line 196
    :cond_6
    return-void
.end method

.method private static a(Lcom/c/a/b/a/a;Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    .line 199
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 200
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_6

    .line 202
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {p0}, Lcom/c/a/b/a/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 208
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 209
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 210
    :cond_1
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 211
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 212
    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 213
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 214
    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 215
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 216
    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 217
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    :cond_6
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/c/a/b/a/d;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1158
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1159
    if-eqz v2, :cond_2

    .line 1160
    new-instance v1, Ljava/io/File;

    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1163
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 151
    new-instance v0, Lcom/c/a/b/a/d;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/b/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    .line 152
    iget-object v0, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    .line 154
    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    .line 1167
    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-interface {v0}, Lcom/c/a/b/a/a;->a()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/c/a/b/a/c;->a()Z

    .line 234
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/c/a/b/a/c;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-interface {v0}, Lcom/c/a/b/a/a;->c()Lcom/c/a/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/c/a/b/a/c;->b()Z

    .line 245
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/c/a/b/a/c;->b()Z

    .line 419
    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/c/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 260
    invoke-static {p1}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/c/a/b/a/c;->c()V

    .line 262
    iget-object v0, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;J)Lcom/c/a/b/a/b;

    .line 269
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/c/a/b/a/c;->c()V

    .line 298
    iget-object v0, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    invoke-interface {v0, p1, p2}, Lcom/c/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/b/a/b;

    .line 305
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 358
    const/4 v0, 0x1

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 360
    iget-object v4, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_1

    .line 361
    iget-boolean v4, p0, Lcom/c/a/b/a/c;->l:Z

    if-nez v4, :cond_0

    .line 362
    iget-object v4, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    const-string v5, "t"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/c/a/b/a/c;->h:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 371
    iget-object v2, p0, Lcom/c/a/b/a/c;->j:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/c/a/b/a/c;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/c/a/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    .line 376
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v2}, Lcom/c/a/a/a/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 378
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    iget-object v3, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    if-nez v3, :cond_7

    .line 380
    iget-object v1, p0, Lcom/c/a/b/a/c;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/c/a/b/a/c;->b(Ljava/lang/String;)Lcom/c/a/b/a/d;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_3

    .line 383
    iget-object v3, p0, Lcom/c/a/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/c/a/b/a/d;->a(Ljava/lang/String;)Lcom/c/a/b/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    .line 385
    iget-boolean v1, p0, Lcom/c/a/b/a/c;->l:Z

    if-nez v1, :cond_6

    .line 386
    iget-object v1, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-static {v1, v3}, Lcom/c/a/b/a/c;->a(Landroid/content/SharedPreferences;Lcom/c/a/b/a/a;)V

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    invoke-interface {v1}, Lcom/c/a/b/a/a;->c()Lcom/c/a/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    .line 400
    :cond_3
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    if-eqz v1, :cond_5

    .line 405
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    if-eqz v1, :cond_5

    .line 406
    iget-object v1, p0, Lcom/c/a/b/a/c;->k:Lcom/c/a/b/a/d;

    iget-object v2, p0, Lcom/c/a/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/c/a/b/a/d;->a(Ljava/lang/String;)Lcom/c/a/b/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_5
    :goto_2
    return v0

    .line 388
    :cond_6
    iget-object v1, p0, Lcom/c/a/b/a/c;->g:Lcom/c/a/b/a/a;

    iget-object v3, p0, Lcom/c/a/b/a/c;->f:Landroid/content/SharedPreferences;

    invoke-static {v1, v3}, Lcom/c/a/b/a/c;->a(Lcom/c/a/b/a/a;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 393
    :cond_7
    iget-object v3, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    if-eqz v3, :cond_3

    .line 394
    iget-object v3, p0, Lcom/c/a/b/a/c;->i:Lcom/c/a/b/a/b;

    invoke-interface {v3}, Lcom/c/a/b/a/b;->b()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 395
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method
