.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ed:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->ed:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
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
    .line 143
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_28

    .line 171
    :goto_3
    return-void

    .line 145
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v0, p1, p3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->selectHideStatusBar(Landroid/widget/AdapterView;I)V

    goto :goto_3

    .line 149
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->selectWallpaperDialog()V

    goto :goto_3

    .line 152
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->selectDisplayClock()V

    goto :goto_3

    .line 155
    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->selectAccuWeather()V

    goto :goto_3

    .line 158
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->selsectBrightness()V

    goto :goto_3

    .line 165
    :pswitch_22
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->selectDockSetting()V

    goto :goto_3

    .line 143
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method
