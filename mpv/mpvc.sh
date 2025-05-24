@echo off

setlocal

export "MPV_DOTFILE=${HOME_DIR}\Git\dotfiles\mpv"
export "MPVC_VIDEO=${MPV_DOTFILE}\mpvc_video"
export "MPVC_STREAM=${MPV_DOTFILE}\mpvc_stream"
export "MPVC_EDIT=${MPV_DOTFILE}\mpvc_edit"
export "MPVC_MUSIC=${MPV_DOTFILE}\mpvc_music"
export "MPVC_KARAOK=${MPV_DOTFILE}\mpvc_karaok"
export "MPVC_MANGA=${MPV_DOTFILE}\mpvc_manga"
export "MPVC_TEST=${MPV_DOTFILE}\mpvc_test"

export "config=%1"

if "${config}"=="video" (
    export "CONFIG_DIR=${MPVC_VIDEO}"
    goto :mpvc
) else if "${config}"=="stream" (
    export "CONFIG_DIR=${MPVC_STREAM} --loop-playlist=inf"
    goto :mpvc
) else if "${config}"=="edit" (
    export "CONFIG_DIR=${MPVC_EDIT}"
    goto :mpvc
) else if "${config}"=="music" (
    export "CONFIG_DIR=${MPVC_MUSIC}"
    goto :mpvc
) else if "${config}"=="karaok" (
    export "CONFIG_DIR=${MPVC_KARAOK}"
    goto :mpvc
) else if "${config}"=="manga" (
    export "CONFIG_DIR=${MPVC_MANGA}"
    goto :mpvc
) else if "${config}"=="test" (
    export "CONFIG_DIR=${MPVC_TEST}"
    goto :mpvc
) else (
    echo Invalid config
    goto :end
)

:mpvc
mpv.exe --config-dir="${CONFIG_DIR%" --idle --force-window --keep-open=yes }2
goto :end

:end
endlocal