//: [Previous](@previous)

import Foundation

struct Video {
    let url: URL
    var downloadTask: Task?
    var file: File?
    var isPlaying = false
    var progress: Double = 0
}

// Above struct can be changed to below one
struct Video {
    enum State {
        case willDownload(from: URL)
        case downloading(task: Task)
        case playing(file: File, progress: Double)
        case paused(file: File, progress: Double)
    }
    var state: State
}

extension Video {
    struct PlaybackState {
        let file: File
        var progress: Double
    }
}

//case playing(PlaybackState)
//case paused(PlaybackState)
