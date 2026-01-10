package org.bitspark.android.beans;

import a2.a;
import com.nmmedit.protect.NativeUtil;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes.dex */
public class ChannelBean implements Serializable {
    private static final long serialVersionUID = -1553784377666168110L;
    private int chid;
    private long dlEver;
    private List<EpgBeans> epg;
    private String id;
    private int level;
    private LogoBean logo;
    private NameBean name;
    private String search;
    private int sid;
    private List<SourcesBean> sources;
    private List<TagsBean> tags;
    private int type;
    private String updatedAt = "";
    private int year = 0;
    private float rating = 0.0f;
    private int epgSameAs = 0;
    private boolean hasPlayBack = false;
    private String description = "";
    int seasonCount = 0;

    public static class LogoBean implements Serializable {
        private static final long serialVersionUID = -155378437762323001L;
        private int id;
        private ImageBean image;

        public static class ImageBean implements Serializable {
            private static final long serialVersionUID = -1553784377666168002L;
            private String big;
            private String small;

            static {
                NativeUtil.classesInit0(1);
            }

            public native String getBig();

            public native String getSmall();

            public native void setBig(String str);

            public native void setSmall(String str);
        }

        static {
            NativeUtil.classesInit0(48);
        }

        public native int getId();

        public native ImageBean getImage();

        public native void setId(int i6);

        public native void setImage(ImageBean imageBean);
    }

    public static class NameBean implements Serializable {
        private static final long serialVersionUID = -1553784377666168003L;
        private I18nBean i18n;
        private String init;

        public static class I18nBean implements Serializable {
            private static final long serialVersionUID = -1553784377666168005L;
            private String en;

            static {
                NativeUtil.classesInit0(30);
            }

            public native String getEn();

            public native void setEn(String str);
        }

        static {
            NativeUtil.classesInit0(27);
        }

        public native I18nBean getI18n();

        public native String getInit();

        public native void setI18n(I18nBean i18nBean);

        public native void setInit(String str);
    }

    public static class SourcesBean implements Serializable {
        private static final long serialVersionUID = -1553784377666168007L;
        private String address;
        private int bType;
        private float duration;
        private int id;
        private int kbps;
        private String mediaType;
        private int qc;
        private int qs;
        private String subTitle;
        private List<SubtitlesBean> subtitles;

        public static class SubtitlesBean implements Serializable {
            private static final long serialVersionUID = -1553784377666168011L;
            private String code;
            private String type = a.s("Wg1x+g==\n", "LmgJjlo05wM=\n");
            private String url;

            static {
                NativeUtil.classesInit0(20);
            }

            public native String getCode();

            public native String getType();

            public native String getUrl();

            public native void setCode(String str);

            public native void setType(String str);

            public native void setUrl(String str);
        }

        static {
            NativeUtil.classesInit0(17);
        }

        public native String getAddress();

        public native int getBType();

        public native float getDuration();

        public native int getId();

        public native int getKbps();

        public native String getMediaType();

        public native int getQc();

        public native int getQs();

        public native String getSubTitle();

        public native List<SubtitlesBean> getSubtitles();

        public native void setAddress(String str);

        public native void setBType(int i6);

        public native void setDuration(float f);

        public native void setId(int i6);

        public native void setKbps(int i6);

        public native void setMediaType(String str);

        public native void setQc(int i6);

        public native void setQs(int i6);

        public native void setSubTitle(String str);

        public native void setSubtitles(List<SubtitlesBean> list);
    }

    public static class TagsBean implements Serializable {
        private static final long serialVersionUID = -1553784377666168013L;
        private DescriptionBean description;
        private int id;
        private ImageBean image;
        private NameBean name;
        private boolean restrictedAccess;
        private int type;
        public String url;

        public static class DescriptionBean implements Serializable {
            private static final long serialVersionUID = -1553784377666168015L;
            private String init;

            static {
                NativeUtil.classesInit0(11);
            }

            public native String getInit();

            public native void setInit(String str);
        }

        public static class ImageBean implements Serializable {
            private static final long serialVersionUID = -1553784377666168017L;
            private String big;
            private String small;

            static {
                NativeUtil.classesInit0(36);
            }

            public native String getBig();

            public native String getSmall();

            public native void setBig(String str);

            public native void setSmall(String str);
        }

        public static class NameBean implements Serializable {
            private static final long serialVersionUID = -1553784377666168021L;
            private String init;

            static {
                NativeUtil.classesInit0(35);
            }

            public native String getInit();

            public native void setInit(String str);
        }

        static {
            NativeUtil.classesInit0(52);
        }

        public native DescriptionBean getDescription();

        public native int getId();

        public native ImageBean getImage();

        public native NameBean getName();

        public native int getType();

        public native boolean isRestrictedAccess();

        public native void setDescription(DescriptionBean descriptionBean);

        public native void setId(int i6);

        public native void setImage(ImageBean imageBean);

        public native void setName(NameBean nameBean);

        public native void setRestrictedAccess(boolean z7);

        public native void setType(int i6);
    }

    static {
        NativeUtil.classesInit0(37);
    }

    public native int getChid();

    public native String getDescription();

    public native long getDlEver();

    public native List<?> getEpg();

    public native int getEpgSameAs();

    public native String getId();

    public native int getLevel();

    public native LogoBean getLogo();

    public native NameBean getName();

    public native float getRating();

    public native String getSearch();

    public native List<SourcesBean> getSeasonSources(int i6);

    public native int getSeasons();

    public native int getSid();

    public native List<Menu> getSourceList();

    public native List<SourcesBean> getSources();

    public native List<TagsBean> getTags();

    public native int getType();

    public native String getUpdatedAt();

    public native int getYear();

    public native boolean isHasPlayBack();

    public native void setChid(int i6);

    public native void setDescription(String str);

    public native void setDlEver(long j10);

    public native void setEpg(List<EpgBeans> list);

    public native void setEpgSameAs(int i6);

    public native void setHasPlayBack(boolean z7);

    public native void setId(String str);

    public native void setLevel(int i6);

    public native void setLogo(LogoBean logoBean);

    public native void setName(NameBean nameBean);

    public native void setRating(int i6);

    public native void setSearch(String str);

    public native void setSid(int i6);

    public native void setSources(List<SourcesBean> list);

    public native void setTags(List<TagsBean> list);

    public native void setType(int i6);

    public native void setUpdatedAt(String str);

    public native void setYear(int i6);

    public native String toString();
}
